# Cookes and Sessions

## Objective

We're going to make a very simple shopping cart, stored entirely in the session.

## Introduction

The Rails `session` method gives us access to the Rails session. The session is a datastore implemented with cookies. You can store simple data structures in the session. ActiveRecord models, no. Arrays of strings or numbers, yes. Basically, if it could be converted into JSON, it can go in the `session`.

We're going to use this to implement a shopping site. Here's how the site will work:

  1. The page has an input box on it.
  2. The user types in the item they want and click `add to cart`.
  3. The item is added to their cart. The page shows everything in the user's cart.

## Instructions
