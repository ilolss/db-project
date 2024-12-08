from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.orm import declarative_base
from sqlalchemy.orm import sessionmaker

DATABASE_URL = "postgresql+psycopg2://berdov:closeyourlaptop@localhost:5432/berdov"

engine = create_engine(DATABASE_URL)

try:
    connection = engine.connect()
    print("ГОООООООООООООЙДА")
    connection.close()
except Exception as e:
    print("НЕ ГООООООООООООООЙДА", e)

Base = declarative_base()

Session = sessionmaker(bind=engine)
session = Session()
