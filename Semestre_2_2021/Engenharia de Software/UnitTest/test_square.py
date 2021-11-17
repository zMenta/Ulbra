import unittest
from square import square_area

class TestSquare(unittest.TestCase):
    def test_area(self):
        self.assertEqual(square_area(5), 25)
        self.assertEqual(square_area(2), 4)
        self.assertEqual(square_area(0), 0)

    def test_values(self):
        self.assertRaises(ValueError, square_area, -4)
    
    def test_type(self):
        self.assertRaises(TypeError, square_area, True)
        self.assertRaises(TypeError, square_area, 3+5j)
        self.assertRaises(TypeError, square_area, "five")