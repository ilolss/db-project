from sqlalchemy import create_engine, MetaData, func
from sqlalchemy.orm import sessionmaker
from sqlalchemy import select
from sqlalchemy import func
from datetime import datetime

DATABASE_URL = "postgresql+psycopg2://berdov:closeyourlaptop@localhost:5432/berdov"
engine = create_engine(DATABASE_URL)

try:
    connection = engine.connect()
    print("получилось")
    connection.close()
except Exception as e:
    print("не получилось", e)

metadata = MetaData(schema="project")
metadata.reflect(bind=engine)

sellers = metadata.tables["project.sellers"]
goods = metadata.tables["project.goods"]
clients = metadata.tables["project.clients"]
orders = metadata.tables["project.orders"]
points = metadata.tables["project.points"]
employees = metadata.tables["project.employees"]

Session = sessionmaker(bind=engine)
session = Session()

with engine.connect() as conn:

    new_seller = {
        "name": "Олег Пахроменко",
        "phone_number": "9876543210",
        "password": b"niktoneuznaet",
        "rating": 4,
    }
    result = conn.execute(sellers.insert().returning(sellers.c.seller_id), [new_seller])
    seller_id = result.fetchone()[0]
    print(f"Добавлен продавец с ID: {seller_id}")

    new_good = {
        "seller_id": seller_id,
        "name": "Чайник для заваривания пельменей",
        "description": "Работает на сберспасибо",
        "price": 150.50,
        "amount": 20,
        "valid_from_dttm": datetime.now(),
    }
    conn.execute(goods.insert(), [new_good])
    print("Добавлен товар")

    new_client = {
        "first_name": "Роксана",
        "last_name": "Бабаян",
        "phone_number": "9333333333",
        "password": b"zvezdaestrady",
    }
    conn.execute(clients.insert(), [new_client])
    print("Добавлен клиент")

    new_point = {
        "address": "г Санкт-Петербург ул Кантемировская д 3",
        "rating": 5,
        "phone_number": "9999999999",
    }
    conn.execute(points.insert(), [new_point])
    print("Добавлена точка продаж")

    new_employee = {
        "first_name": "Зульфия",
        "last_name": "Открываетдверь",
        "age": 30,
        "phone_number": "9423679417",
        "position": "сотрудник пвз",
        "salary": 50000.00,
    }
    conn.execute(employees.insert(), [new_employee])
    print("Добавлен сотрудник")


    print("\nА кто у нас царица валдбериз:")
    top_clients_query = (
        session.query(
            clients.c.first_name,
            clients.c.last_name,
            func.count(orders.c.order_id).label("order_count"),
        )
        .join(orders, clients.c.client_id == orders.c.client_id)
        .group_by(clients.c.client_id)
        .order_by(func.count(orders.c.order_id).desc())
        .limit(10)
    )
    for client in top_clients_query:
        print(client)

    print("\nСредняя цена товаров у каждого продавца:")
    avg_goods_price_query = (
        session.query(
            sellers.c.name.label("seller_name"),
            func.avg(goods.c.price).label("average_price"),
        )
        .join(goods, sellers.c.seller_id == goods.c.seller_id)
        .group_by(sellers.c.seller_id)
        .order_by(func.avg(goods.c.price).desc())
    )
    for seller in avg_goods_price_query:
        print(seller)
    
    conn.execute(
        goods.update()
        .where(goods.c.name == "Чайник для заваривания пельменей")
        .values(price=200.75)
    )
    print("Цена товара обновлена")

    conn.execute(
        sellers.update().where(sellers.c.name == "Олег Пахроменко").values(rating=5)
    )
    print("Рейтинг продавца обновлен")

    conn.execute(
        goods.delete().where(goods.c.name == "Чайник для заваривания пельменей")
    )
    print("Товар удален")

    conn.execute(sellers.delete().where(sellers.c.name == "Олег Пахроменко"))
    print("Продавец удален")

    conn.execute(clients.delete().where(clients.c.first_name == "Роксана"))
    print("Клиент удален")

    conn.execute(
        points.delete().where(
            points.c.address == "г Санкт-Петербург ул Кантемировская д 3"
        )
    )
    print("Точка продаж удалена")

    conn.execute(employees.delete().where(employees.c.first_name == "Зульфия"))
    print("Сотрудник удален")
