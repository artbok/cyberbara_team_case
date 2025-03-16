import requests
from utils import findHighestPoint


def getMap(url):
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
            map[i].append(matrix)

    return map

def getCoords(url):
    if '://' not in url:
        url = 'https://' + url
    if url[-1] != '/':
        url += '/'
    request = requests.get(url + 'coords')
    return request.json()['message']
