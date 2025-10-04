from flask import Flask 

app = Flask(__name__)

@app.route('/')

def hello():
    return "Hello World from Abuzar!,an aspiring DevOps Engineer"

if __name__ == '__main__':


   app.run(host='0.0.0.0', port=5000, debug=True )
