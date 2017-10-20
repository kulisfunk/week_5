import unittest
from CakeShop import CakeShop
from Cake import Cake

class TestCase(unittest.TestCase):

    def setUp(self):
        name = "Hot Buns"
        cakes = [Cake("Banana Bread", ["sugar", "flour", "banana"], 5),
        Cake("Brownie", ["sugar", "flour", "chocolate"], 7),
        Cake("Scone", ["sugar", "flour", "butter"], 6)]
        self.cakeshop = CakeShop(name, cakes)

    def test_cake_ratings(self):
        self.assertEqual(6, self.cakeshop.ratings())

unittest.main()
