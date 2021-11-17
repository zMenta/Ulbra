import unittest
from square import square_area

class TestCircle(unittest.TestCase):
    def test_area(self):
        self.assertEqual(square_area(5), 25)
