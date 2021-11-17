def square_area(square_side):
    """
    Returns the area of a square. 
    """
    if type(square_side) not in [int,float]:
        raise TypeError("Square_side must be an integer or float value.")

    if square_side < 0:
        raise ValueError("Square_side cannot be negative.")
    
    area = square_side**2
    return area
    