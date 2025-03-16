from flask import Flask, request, jsonify
from services import getMap, getCoords
app = Flask(__name__)

@app.route('/', methods = ["POST"])
def main():
    url = request.json['url']
    matrix = getMap(url)
    # coords = getCoords(url)
    # getHighestPoint(matrix)
    return jsonify(matrix)
    
app.run()