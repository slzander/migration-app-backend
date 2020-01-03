## Welcome to Migration Mapper!
**This is a locational mapping app for researchers who want to be able to visualize annual movements of migratory species for the purpose of data analysis or project presentations.**

Created by Stacey Zander.

![background](/1.png)

![background](/2.png)
  
**Demo:**

https://www.youtube.com/watch?v=cQpGNGBwHVY&feature=youtu.be

**Stack:**

  * Ruby/Rails

  * JavaScript

  * React

**Other Tech:**

  * Leaflet

  * MoveBank database (for bird location data)

**Install Instructions:**
(This is a deployed app, but if you would like to run it locally, follow these instructions.)

1. Have current versions of Ruby and Rails installed. Fork and clone this repo.

2. Install Ruby gems by running the command 'bundle install'.

3. Run the command 'rails db:migrate' to set up your database.

4. If you want to add your own data, replace the csv file in db/csv with a csv file that contains your own data (name it bird-data.csv). Be sure that you have header columns that match the ones in the current csv file.

5. Run the command 'rails db:seed' to fill the tables with data.

6. Run the command 'rails s'.

6. Follow the instructions on this repo to run the frontend: https://github.com/slzander/migration-app-frontend

