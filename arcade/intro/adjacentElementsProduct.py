def adjacentElementsProduct(inputArray):
    max = None

    for i in range(len(inputArray) - 1):
        product = inputArray[i] * inputArray[i + 1]

        if max is None:
            max = product

        if product > max:
            max = product
    return max
