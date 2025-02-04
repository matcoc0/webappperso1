# Web App Perso - Mathieu Cowan
First web app created, conceptualized, and implemented by Mathieu Cowan.
This app is supposed to help user to make decision based on many factors. These decisions are only designed to be made for social gathering, to decide what you do of your evening/day on a entertainment level.

The first part of this project is exclusively for romantic activities. Friendly activities will then be implemented.

Concerning the first part, the first version will be composed of : 
The user, which can be created, edited, deleted, has the following attributes :
- ID information : *ID* for numbering the users in the database ; *firstname*, *name*, *sex*, *class* which can be "friend", "family" or "partner".
- Now this is the most tricky part : *foodtype_list* (id_typefood, id_indiv, id_indiv, name, num, avg_price) with the list of types of food he/she likes, *restau_list* for her favorite list of restaurants (id_restau, id_indiv, id_typefood, name, avg_price, address), *drinks_list* (id_drink, id_indiv, id_restaurant, name_drink, price) , *cocktails_list* (id_cocktail, id_indiv, id_restaurant, name_cocktail, price), *activity_list* (id_activity, id_indiv, name), *people_list* - list of the people a person wants in an event. each list has as attributes the ID in all of the activity list and as a foreign key the person's id.
individual () ; restaurant () ; drink () ; cocktail () ; activity (), people_list ()
- Once the data retrieving is done, we are set to use the application. For instance, the server will ask the client how many people are involves in the decision. Then all the individuals will answer questions which are oriented with the profile. Each individual will do so and then the decision can be randomly made (through a visual roulette for example), or the decision can be made manually by all of the propositions which are on the table (A system of points can be given for example. Also when it comes to restaurants typically, a directed search on a specialised website (for example, https://www.thefork.fr/) can be made with the budget, location, date of the gathering, etc.
