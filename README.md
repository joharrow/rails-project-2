# Homework #2

All requirements completed.

The Salsa google font was applied to the Products and Stores headings for the respective index view pages.

The products catalog is displayed with one product per row, similar to the layout on Amazon.com.

When navigating to a store show page, the user will be prompted to share their location. If
the user shares their location, there is added information related to the user location, as required. 
If not, only the map is shown. Note that the page layout is varied based on the location sharing.

The divvy json has a location field that will contain the location of the divvy station. The field
however is not always populated. Thus when displaying the nearest divvy locations, if the location
is populated it will be displayed. If the location is not populated, the coordinates are dispalyed
instead.

To run the application in localhost, start by cloning the application and run the following from 
the project directory,

bundle install<br>
rake db:migrate<br>
rake db:seed<br>
rails server<br>

Navigate to localhost:3000 in a web browser.