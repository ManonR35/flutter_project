# flutter_project

## Explanation

An e-commerce application that retrieves data from the API, with navigation for screens:

- Home: a page that lists the products.
- Cart: the list of products placed in the cart, including quantity and total price.
- Account: information about the user's account, with a form to modify them.

## API Used

### DummyJSON

Fake data used as a placeholder during development or prototype testing.

> https://dummyjson.com/

Request to display user information: https://dummyjson.com/users/1
Request to display the product list: https://dummyjson.com/products&limit=10
Request to display products in the cart: https://dummyjson.com/carts&limit=6

## Choice of Dependencies

### flutter_rating_bar: ^4.0.1

A simple yet fully customizable rating bar for flutter which also include a rating bar indicator, supporting any fraction of rating.
