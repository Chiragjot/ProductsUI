import pandas as pd
import json
import random
from string import ascii_lowercase
import itertools
import lorem


def iter_all_strings():
    for size in itertools.count(1):
        for s in itertools.product(ascii_lowercase, repeat=size):
            yield "".join(s)
productNames = []
for s in itertools.islice(iter_all_strings(), 1000):
    productNames.append(s)

def randomRating():
    return random.randint(1,5)

def randomPrice():
    return random.randint(800, 5000)

df = pd.read_csv('test.csv')
images = []
for i in range (0,1000):
    images.append(df['url'][i])
products = [
    {
        'id': '{}'.format(i),
        'productName': 'Product '+productNames[i],
        'productUrl': images[i],
        'productrating': '{}'.format(randomRating()),
        'productDescription': lorem.paragraph(),
        'productPrice': '{}'.format(randomPrice())
        
    } for i in range (0,1000)
]

with open('products.json', 'w') as fp:
    json.dump(products, fp)