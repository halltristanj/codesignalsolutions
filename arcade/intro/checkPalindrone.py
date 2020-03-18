def checkPalindrome(inputString):
    if len(inputString) == 1:
        return True

    for i in range(len(inputString)):
        if inputString[i] != inputString[-i - 1]:
            return False

    return True
