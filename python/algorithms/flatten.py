def flatten(xss):
    result = []
    for xs in xss:
        if isinstance(xs, list):
            result.extend(flatten(xs))
        else:
            result.append(xs)
    return result