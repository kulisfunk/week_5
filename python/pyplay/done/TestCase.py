import unittest
from Cake import Cake

class TestCase(unittest.TestCase):

    def setUp(self):
        ingredients = ["Sugar", "Flour", "Banana"]
        self.cake = Cake("Banana Bread", ingredients, 5)

    def test_cake_has_name(self):
        self.assertEqual("Banana Bread", self.cake.name)

    def test_cake_has_ingredients(self):
        self.assertEqual(3, len(self.cake.ingredients))

    def test_cake_can_bake(self):
        self.assertEqual("The cake is baking!", self.cake.bake())

unittest.main()
