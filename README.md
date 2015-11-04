# Homework #2

All requirements completed.

The Salsa google font was applied to the Products and Stores headings for the respective index view pages.

The products catalog is displayed with one product per row, similar to the layout on Amazon.com.

When navigating to a store show page, the user will be prompted to share their location. If
the user shares their location, there is added information related to the user location, as required. 
If not, only the map is shown. Note that the page layout is varied based on the location sharing.

To run the application in localhost, start by cloning the application and run the following from 
the project directory,

bundle install
rake db:seed
rake db:migrate
rails server

Navigate to localhost:3000 in a web browser.