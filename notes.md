## MVC : Model View Controller
Model (maintains the relationship between the objects and the database and handles validation, association, transactions, and more. The model updates the view. Think database and active records.)

View (The presentation of data in a particular format, triggered by a controller's decision to present the data. The user sees the view and uses the contoller. Think CSS and HTML)

Controller (The facility within the application that directs traffic, on the one hand, querying the models for specific data, and on the other hand, organizing that data (searching, sorting, messaging it) into a form that fits the needs of a given view. The controller manipulates the model. Think forms and buttons)

## 

app − It organizes your application components. It's got subdirectories that hold the view (views and helpers), controller (controllers), and the backend business logic (models).

app/controllers − The controllers subdirectory is where Rails looks to find the controller classes. A controller handles a web request from the user.

app/helpers − The helpers subdirectory holds any helper classes used to assist the model, view, and controller classes. This helps to keep the model, view, and controller code small, focused, and uncluttered.

app/models − The models subdirectory holds the classes that model and wrap the data stored in our application's database. In most frameworks, this part of the application can grow pretty messy, tedious, verbose, and error-prone. Rails makes it dead simple!

app/view − The views subdirectory holds the display templates to fill in with data from our application, convert to HTML, and return to the user's browser.

app/view/layouts − Holds the template files for layouts to be used with views. This models the common header/footer method of wrapping views. In your views, define a layout using the <tt>layout:default</tt> and create a file named default.html.erb. Inside default.html.erb, call <% yield %> to render the view using this layout.

components − This directory holds components, tiny self-contained applications that bundle model, view, and controller.

config − This directory contains the small amount of configuration code that your application will need, including your database configuration (in database.yml), your Rails environment structure (environment.rb), and routing of incoming web requests (routes.rb). You can also tailor the behavior of the three Rails environments for test, development, and deployment with files found in the environments directory.

db − Usually, your Rails application will have model objects that access relational database tables. You can manage the relational database with scripts you create and place in this directory.

doc − Ruby has a framework, called RubyDoc, that can automatically generate documentation for code you create. You can assist RubyDoc with comments in your code. This directory holds all the RubyDoc-generated Rails and application documentation.

lib − You'll put libraries here, unless they explicitly belong elsewhere (such as vendor libraries).

log − Error logs go here. Rails creates scripts that help you manage various error logs. You'll find separate logs for the server (server.log) and each Rails environment (development.log, test.log, and production.log).

public − Like the public directory for a web server, this directory has web files that don't change, such as JavaScript files (public/javascripts), graphics (public/images), stylesheets (public/stylesheets), and HTML files (public).

script − This directory holds scripts to launch and manage the various tools that you'll use with Rails. For example, there are scripts to generate code (generate) and launch the web server (server).

test − The tests you write and those that Rails creates for you, all goes here. You'll see a subdirectory for mocks (mocks), unit tests (unit), fixtures (fixtures), and functional tests (functional).

tmp − Rails uses this directory to hold temporary files for intermediate processing.

vendor − Libraries provided by third-party vendors (such as security libraries or database utilities beyond the basic Rails distribution) go here.

Apart from these directories, there will be two files available in demo directory.

README − This file contains a basic detail about Rail Application and description of the directory structure explained above.

Rakefile − This file is similar to Unix Makefile, which helps with building, packaging and testing the Rails code. This will be used by rake utility supplied along with the Ruby installation.

## Workflow

[ ] A recommended work flow for creating Rails Application is as follows −

[ ] Use the rails command to create the basic skeleton of the application.

[ ] Create a database on the PostgreSQL server to hold your data.

[ ] Configure the application to know where your database is located and the login credentials for it.

[ ] Create Rails Active Records (Models), because they are the business objects you'll be working with in your controllers.

[ ] Generate Migrations that simplify the creating and maintaining of database tables and columns.

[ ] Write Controller Code to put a life in your application.

[ ] Create Views to present your data through User Interface.

## Scripts

Insert Definition here
`rails generate model`

`rake db:migrate`
`rake db:drop:all`
`rake db:create:all`
Change the environmental variable for the database to work on
`export RAILS_ENV=development`
List all your defined routes (useful for tracking down routing problems or giving a good overview of the URLS in an app you're trying to learn)
`rake routes` (prior to 6.1.x)
`rails routes` (post 6.1.x)