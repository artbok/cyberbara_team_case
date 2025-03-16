def findHighestPoint(matrix):
    highestPoint = 0
    coords = []
    for i in range(64):
        for j in range(64):
            if matrix[i][j] > highestPoint:
                highestPoint = matrix[i][j]
                coords = [(i, j)]
            elif matrix[i][j] == highestPoint:
                coords.append((i, j))
    for i in coords:
        matrix[i[0]][i[1]] = "H"
    return matrix, coords, highestPoint



    