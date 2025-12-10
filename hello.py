from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():  
    return "Hello, World!"


@app.route("/ping", methods=["GET", "post"]) 
def ping():
    return {"message" : "why are you pinging me?"} 