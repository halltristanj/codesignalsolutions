def bubble_sort(statues):
    is_sorted = True
    while is_sorted:
        is_sorted = False
        for i in range(len(statues) - 1):
            if statues[i + 1] < statues[i]:
                statues[i + 1], statues[i] = statues[i], statues[i + 1]
                is_sorted = True
    return statues


def makeArrayConsecutive2(statues):
    statues = bubble_sort(statues)

    n = 0
    for i in range(len(statues) - 1):
        n += (statues[i + 1] - statues[i]) - 1

    return n
