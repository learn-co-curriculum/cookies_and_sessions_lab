# Cookies and Sessions

## Objective

We're going to make a very simple shopping cart, stored entirely in the session.

## Introduction

The Rails `session` method gives us access to the Rails session. The session is a datastore implemented with cookies. You can store simple data structures in the session. ActiveRecord models, no. Arrays of strings or numbers, yes. Basically, stick to data literals—numbers, strings, hashes, and arrays.

We're going to use this to implement a shopping site. Here's how the site will work:

  1. The page has an input box on it.
  2. The user types in the item they want and click `add to cart`.
  3. The item is added to their cart. The page shows everything in the user's cart.

## Instructions

1. Create the cart method in `ApplicationController#cart`.
2. Create a Products controller with two actions, index and add.
3. Create views using the feature tests as your guide. The page should have, at a minimum: a text box where the user can enter the name of a product, a submit button that adds it to their cart, and a display of what's in the cart.
