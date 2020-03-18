function adjacentElementsProduct(inputArray) {
    var max = inputArray[0] * inputArray[1];
    for(var i = 1; i < inputArray.length - 1; i++) {
        var product = inputArray[i] * inputArray[i + 1];
        if(product > max) {
            max = product;
        }
    }
    return max;
}
