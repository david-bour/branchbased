import os
from fastapi import FastAPI

app = FastAPI()

config = os.environ.get("PAGE_NAME", "DEFAULT")

@app.get("/")
def home():
    return {"secretCode": config}

@app.get("/info")
def info():
    return {"info": "NO buttons!"}

@app.get("/new")
def new():
    return {"new info": "new"}
