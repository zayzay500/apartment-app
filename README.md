# Apartment-app

## Introduction

We're going to build an app for Apartments
create the following database structure:

- You will have two models (and their corresponding tables) `Apartment` and `Tenant`,
- A Tenant `belongs_to` an apartment and an apartment `has_many` tenants.

## Instructions

#### Migrations

Write migrations to create the following tables:

**Apartments**

| **id** |      **address**      |
| :----: | :----------------: |
|   1    | Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979 |
|   2    | 7768 David Avenue, Greenside, PA 67475-3655 |

**Tenants**

| **id** |        **name**         | **apartment_id** |
| :----: | :---------------------: | :------------ |
|   1    | Casie Effertz | 1 |
|   2    | Dorris Bogan | 5 | 
|   3    | Bernie Schiller | 4 |
|   4    | Manie Dare | 10 |

##### Seed data

After your Active Record models have been properly defined, you can load the
seed data by running `rake db:seed`.

#### Views and Controllers
![Final Demo](https://i.imgur.com/O1ayQkw.gif)
