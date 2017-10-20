class CakeShop:

    def __init__(self, name, cakes):
        self.name = name
        self.cakes = cakes


    def ratings(self):
        rating = 0
        for cake in self.cakes:
            rating += cake.rating
            average = rating / len(self.cakes)

        return average
