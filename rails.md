# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: 
  Model - Validations and associations to other models so that everything in the program is connected to each other.
  View - What is shown on the program made by rails.
  Controller - Is the functional software that makes the program do what you ask it to.

  Researched answer: 
  Model - A Rails Model is a Ruby class that can add database records
  View - A Rails View is an ERb program that shares data with controllers through mutually accessible variables
  Controller - The Rails controller is the logical center of your application



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the __route__ in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the __controller__ in the file __app/controllers/statics_controller.rb__
  ```
  class __StaticsController__ < ApplicationController
    def __about__
      render __about.html.erb__
    end
  end
  ```

  Step 3: Create the View in the file __view/statics/about.html.erb__
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
Will show you all users in the index through the method get

/users/1      method="GET"     # :controller => 'users', :action => 'show'
Will get you the user with id of 1

/users/new    method="GET"     # :controller => 'users', :action => 'new'
Will get you the user with the newest id

/users/       method="POST"    # :controller => 'users', :action => 'create'
Will create a whole new user

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
Will bring up an editable information for user 1

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
Will update the user with the id of 1

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
Will delete the user with the id of 1


3b. Which of the above routes must always be passed params and why?

Show, edit, update, and destroy. Because they all need a specific user id (params[:id]) so that they can manipulate.


4. What is the public folder used for in Rails?

  Your answer: Mostly errors, and boiler plates.

  Researched answer: In many MVC frameworks (e.g. Rails), the public folder is used to serve static files. So for example, you often see 404



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

  get '/main' => '/game#guest'



6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: 

  Researched answer: The HTML | action Attribute is used to specify where the formdata is to be sent to the server after submission of the form.



7. Name two rails generator commands and what files they create:

  Your answer: rails g model - Generates a model file rails g controller - Generates a controller file

  Researched answer: rails g -h - Generates a help infortmation page, rails g -f - Overwrites files that already exist


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. Rails controller is the logic center of an application. It handles external requests to internal actions, reduce the bulk of code through managing modules, and gives an impression of interaction with the application.

2. Migration is a way to keep code up to date through version control, negating some issues you might have with newer versions of code.

3. Routes are a way to redirect incoming requests to controllers and actions.


9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer: Information that is saved onto a web page that you have visited.

  Researched answer: An HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing.
  The main difference between a session and a cookie is that session data is stored on the server, whereas cookies store data in the visitor's browser.
