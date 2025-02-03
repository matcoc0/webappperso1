# Web App Perso - Mathieu Cowan
First web app created, conceptualized, and implemented by Mathieu Cowan.
This app is supposed to help user to make decision based on many factors. These decisions are only designed to be made for social gathering, to decide what you do of your evening/day on a entertainment level.

The first part of this project is exclusively for romantic activities. Friendly activities will then be implemented.

Concerning the first part, the first version will be composed of : 
The user, which can be created, edited, deleted, has the following attributes :
- ID information : *ID* for numeroting the persons in the database ; *firstname*, *name*, *sex*, *class* which can be "friend", "family" or "partner".
- now this is the most tricky part : *foodtype_list* with the list of types of food he/she likes, *restau_list* for her favorite list of restaurants, *drinks_list*, *cocktails_list*, *activity_list*, *sports_list*, *people_list*. each list has as attributes the ID in all of the activity list and as a foreign key the person's id.
- once the data retrieving is done, we are set to use the application. For instance, the server will ask the client how many people are involves in the decision. Then all the individuals will answer questions which are oriented with the profile. Each individual will do so and then the decision can be randomly made, or the decision can be made manually by all of the propositions which are on the table. A system of points can be given for example. Also when it comes to restaurants typically, a directed search on a specialised website (for example, https://www.thefork.fr/) can be made with the budget, location, date of the gathering, etc, etc)
