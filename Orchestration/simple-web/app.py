from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def show_stage():
    stage = os.getenv("STAGE", "Not Set")
    return f"<h1>STAGE: {stage}</h1>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
