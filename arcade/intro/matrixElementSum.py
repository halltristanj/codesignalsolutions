def matrixElementsSum(matrix):
    """
    [
        [0,1,1,2],
        [0,5,0,0],
        [2,0,3,3]
    ]
    """

    rooms = len(matrix[0])
    bad_room_indices = []
    _sum = 0
    for floor in matrix:
        for room in range(rooms):
            if floor[room] != 0 and room not in bad_room_indices:
                _sum += floor[room]
            else:
                bad_room_indices.append(room)
    return _sum
