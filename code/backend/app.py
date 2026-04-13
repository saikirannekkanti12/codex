import os
from flask import Flask, jsonify
import psycopg2

app = Flask(__name__)


def get_conn():
    return psycopg2.connect(
        host=os.getenv("DB_HOST", "localhost"),
        port=int(os.getenv("DB_PORT", "5432")),
        dbname=os.getenv("POSTGRES_DB", "eshopedb"),
        user=os.getenv("POSTGRES_USER", "eshop"),
        password=os.getenv("POSTGRES_PASSWORD", "change-me"),
    )


@app.get("/healthz")
def healthz():
    return jsonify(status="ok")


@app.get("/version")
def version():
    return jsonify(version=os.getenv("APP_VERSION", "v1"))


@app.get("/products")
def list_products():
    conn = get_conn()
    cur = conn.cursor()
    cur.execute("SELECT id, name, price, image_url FROM products ORDER BY id")
    rows = cur.fetchall()
    cur.close()
    conn.close()
    products = [
        {"id": r[0], "name": r[1], "price": float(r[2]), "image_url": r[3]}
        for r in rows
    ]
    return jsonify(products)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
