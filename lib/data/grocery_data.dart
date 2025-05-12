import '../models/grocery_item.dart';

List<GroceryItem> groceryItemsData = [
  GroceryItem(
    id: 1,
    name: 'Apple',
    imageUrl:
        'https://imgs.search.brave.com/q5DedgXLCjG-Cigjn6ahQXAuVB3Sr5NNIH93l0JPooM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTc4/Mzk1OTUzL3Bob3Rv/L2dyZWVuLWFwcGxl/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz10bGZ6OGo0amgt/emtMUFRscUdKaUJZ/dl9TMkU1SXVILWs1/akJiMzBoU0FVPQ',
    description: 'Fresh and crispy red apples.',
    price: 69,
  ),
  GroceryItem(
    id: 2,
    name: 'Banana',
    imageUrl:
        'https://imgs.search.brave.com/nvuFbGpFiPMXRG4GY3KPLhGoCLQWoX70btWBBOywqxA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9h/aS1nZW5lcmF0ZWQt/aW1hZ2UtYmFuYW5h/XzIzLTIxNTA2ODMw/MjIuanBnP3NlbXQ9/YWlzX2h5YnJpZCZ3/PTc0MA',
    description: 'Ripe yellow bananas, rich in potassium.',
    price: 50,
  ),
  GroceryItem(
    id: 3,
    name: 'Orange',
    imageUrl:
        'https://imgs.search.brave.com/wp2e67uqAFgkQiMQxd-PKJVBbNGs4dsLgCM7DTqzSUY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9vcmFuZ2UtZnJ1/aXQtb3Jhbmctc2xp/Y2UtaXNvbGF0ZS13/aGl0ZS13aXRoLWdy/ZWVuLWxlYWZzXzEw/NTQyOC0yODAxLmpw/Zz9zZW10PWFpc19o/eWJyaWQmdz03NDA',
    description: 'Juicy and tangy oranges, high in vitamin C.',
    price: 29,
  ),
  GroceryItem(
    id: 4,
    name: 'Broccoli',
    imageUrl:
        'https://imgs.search.brave.com/GHpvaQGj9_BXDJffOoQT-tm84H8sGMXph7NqpfFFj_0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAxLzk4LzcxLzg0/LzM2MF9GXzE5ODcx/ODQ3NF9xamkxR29Y/ZTZjRnlQNlFSZkJh/SG12VnZ2UU1GclRn/WS5qcGc',
    description: 'Fresh green broccoli heads.',
    price: 19,
  ),
  GroceryItem(
    id: 5,
    name: 'Milk',
    imageUrl:
        'https://imgs.search.brave.com/B6Harq6NRqauIyxGHLgqe1MVZHhxUFOEjZRZuk7w3Y8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTA0/ODIyMTA5L3Bob3Rv/L21pbGstc3BsYXNo/aW5nLWluLWZ1bGwt/Z2xhc3MuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPVBLd1BK/VGRzbVJ2T3Brbnpo/TnlQQ2VPX3hJZGtZ/dkhmYnNabVNhTTFx/MjA9',
    description: 'Organic whole milk, 1 liter.',
    price: 49,
  ),
  GroceryItem(
    id: 6,
    name: 'Carrots',
    imageUrl:
        'https://imgs.search.brave.com/HHmA446upal9dPGgUsC8EHLN8pZ3uE4-vvFAQpMV5xA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzA2Lzg2LzY3/LzM2MF9GXzIwNjg2/Njc0MF84azg0dXoz/bm5peGs2aVBJNW9z/TTNxTmRQRHVBY05m/YS5qcGc',
    description: 'Crunchy fresh carrots.',
    price: 0.79,
  ),
  GroceryItem(
    id: 7,
    name: 'Strawberries',
    imageUrl:
        'https://imgs.search.brave.com/i6_X5b9LThCdcWlAV9fralRs_aiKGKVY9i6Rrge3Ino/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9zdHJhd2JlcnJp/ZXMtd2l0aC1sZWF2/ZXMtaXNvbGF0ZWQt/d2hpdGUtYmFja2dy/b3VuZF80NjExNjAt/MjE0NC5qcGc_c2Vt/dD1haXNfaHlicmlk/Jnc9NzQw',
    description: 'Sweet and juicy strawberries.',
    price: 2.99,
  ),
  GroceryItem(
    id: 8,
    name: 'Eggs',
    imageUrl:
        'https://imgs.search.brave.com/nxJ4gKffmiiHEZriihi4M7_j4PoZ4Hf0l4xls1tDgas/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9o/ZW4tZWdnc18xMzM5/LTg3MS5qcGc_c2Vt/dD1haXNfaHlicmlk/Jnc9NzQw',
    description: 'Fresh organic eggs.',
    price: 3.49,
  ),
];
