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
|              Action             |                                              Endpoint                                              |
|:-------------------------------:|:--------------------------------------------------------------------------------------------------:|
| GET a list of all animals       | localhost:3000/animals                                                                             |
| GET a list of animals, by name  | localhost:3000/animals?name=[search_params]                                                        |
| GET a list of animals, by age   | localhost:3000/animals?age=[search_params]                                                         |
| GET a list of animals, by breed | localhost:3000/animals?breed=[search_params]                                                       |
| GET a list of animals, by age   | localhost:3000/animals?gender=[search_params]                                                      |
| POST a new animal               | localhost:3000/animals?breed=[breed_param]&age=[age_param]&gender=[gender_param]&name=[name_param] |
| PATCH/PUT an animal's breed     | localhost:3000/animals?breed=[new_breed]                                                           |
| PATCH/PUT an animal's age       | localhost:3000/animals?age=[new_age]                                                               |
| PATCH/PUT an animal's gender    | localhost:3000/animals?gender=[new_gender]                                                         |
| PATCH/PUT an animal's quote     | localhost:3000/animals?quote=[new_quote]                                                           |
| DELETE an animal record         | localhost:300/animal?id=[id_param]                                                                 |
| SEARCH                          | User can enter parameters and all objects matching any of those parameters will be returned        |
|                                 | API is limited to 2000 calls per day       

### License

This software is licensed under the MIT license.

Copyright (c) 2020 **_Daniel Merys_**