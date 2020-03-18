def almostIncreasingSequence(sequence):
    """Definitely got help on this."""
    removed_one = False
    for i in range(len(sequence) - 1):
        if sequence[i] >= sequence[i + 1]:
            if removed_one:
                return False
            else:
                removed_one = True
                if i != 0 and i < len(sequence) - 2:
                    if (sequence[i - 1] < sequence[i + 1]) or (sequence[i] < sequence[i + 2]):
                        continue
                    else:
                        return False
    return True
