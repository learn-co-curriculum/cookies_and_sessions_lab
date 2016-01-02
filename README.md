# Cookes and Sessions

## Objective

We're going to make a very simple shopping cart, stored entirely in the session.

## Introduction

The Rails `session` method gives us access to the Rails session. The session is a datastore implemented with cookies. You can store simple data structures in the session. ActiveRecord models, no. Arrays of strings or numbers, yes. Basically, stick to data literals—numbers, strings, hashes, and arrays.

We're going to use this to implement a shopping site. Here's how the site will work:

  1. The page has an input box on it.
  2. The user types in the item they want and click `add to cart`.
  3. The item is added to their cart. The page shows everything in the user's cart.

## Instructions

You'll find that the rspec is failing. Get them to pass. I would tackle it like this:

1. `ApplicationController#cart`s tests are failing because, primarily, it doesn't exist. Write it to make them pass.
2. Now `rails generate` a Products controller with two actions, index and add.
3. Fill them in to make the specs pass.
4. Now make the feature test pass. You'll have to write views for this. The page should have, at a minimum: a text box where I can enter the name of a product, a submit button that adds it to my cart, and a display of what's in my cart.
