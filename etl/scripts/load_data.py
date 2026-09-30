from pathlib import Path

import pandas as pd
from sqlalchemy import create_engine

DATABASE_URL = (
    "postgresql+psycopg2://"
    "cx_admin:cx_password@localhost:5432/cx_analytics"
)

engine = create_engine(DATABASE_URL)

BASE_DIR = Path(__file__).resolve().parents[2]
RAW_DIR = BASE_DIR / "data" / "raw"

customers = pd.read_csv(RAW_DIR / "customers.csv")
agents = pd.read_csv(RAW_DIR / "agents.csv")
tickets = pd.read_csv(RAW_DIR / "support_tickets.csv")
feedback = pd.read_csv(RAW_DIR / "customer_feedback.csv")

customers.to_sql(
    "customers",
    engine,
    if_exists="append",
    index=False
)

agents.to_sql(
    "agents",
    engine,
    if_exists="append",
    index=False
)

tickets.to_sql(
    "support_tickets",
    engine,
    if_exists="append",
    index=False
)

feedback.to_sql(
    "customer_feedback",
    engine,
    if_exists="append",
    index=False
)

print("Data loaded successfully.")
