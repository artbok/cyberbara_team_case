import requests
from utils import findHighestPoint


def getMap(url):
    coords = getCoords(url)["message"]
    listener = (coords["listener"][0] // 64, coords["listener"][1] // 64)
    sender = (coords["sender"][0] // 64, coords["sender"][1] // 64)
    if '://' not in url:
        url = 'https://' + url
    map = []
    highestPoints = []
    for i in range(4):
        map.append([])
        highestPoints.append([])
        for j in range(4):
            request = requests.get(url)
            matrix, coords, highestPoint = findHighestPoint(request.json()['message']['data'])
            if (i, j) == listener:
                matrix[coords["listener"][0] % 64][coords["listener"][1] % 64] = "L"
            if (i, j) == sender:
                matrix[coords["sender"][0] % 64][coords["sender"][1] % 64] = "S"
            map[i].append(matrix)
    return map

def getCoords(url):
    if '://' not in url:
        url = 'https://' + url
    if url[-1] != '/':
        url += '/'
    request = requests.get(url + 'coords')
    return request.json()['message']
