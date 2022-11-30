import os
from fastapi import FastAPI

app = FastAPI()

config = os.environ.get("PAGE_NAME", "DEFAULT")

@app.get("/")
def home():
    return {"secretCode": config}

@app.get("/info")
def info():
    return {"info": "some configuration"}
