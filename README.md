# _Animal Shelter API_

#### _A bare-bones example of a Ruby on Rails application providing a REST API to a database-backed model._

#### By _**Daniel Merys**_

## Description

_This API, for a fictional animal shelter, allows users to GET, POST, PUT, DELETE objects to the database. There is, as of yet, no UI application._

## Setup/Installation Requirements

There are 2 ways to view this application

1. Clone this repository to your machine
2. In the terminal, run `rails s` from the root directory
3. Use Postman to make API calls from the URL http://localhost:3000/animals/

or

1. Navigate to https://epicodus-animal-shelter.herokuapp.com/animals and use Postman to make API calls

## Known Bugs
- Search function will return any result that matches any entered parameter

 
## Support and contact details

_Have a bug or an issue with this application? [Open a new issue](https://github.com/dkmerys/animal_shelter/issues) here on GitHub._

## Technologies Used


Git and GitHub,
Ruby on Rails,
Ruby Gems (Faker, FactoryBot, Rack-Throttle)
Postman


### Specs
| Endpoints |                                         Description                                         |
|:---------:|:-------------------------------------------------------------------------------------------:|
| GET       | User can enter a numerical ID and will receive the JSON object with that ID                 |
| POST      | User can enter parameters and add an object to the database (ID is automatically assigned   |
| PUT       | User can edit an object attribute                                                           |
| DELETE    | User can delete an object                                                                   |
| SEARCH    | User can enter parameters and all objects matching any of those parameters will be returned |

### License

This software is licensed under the MIT license.

Copyright (c) 2020 **_Daniel Merys_**