HTTParty
========

This repository contains automated tests for SpartaGlobal's Todos list, using rubygem HTTParty. Used for learning more with Git, RSpec and Ruby. 

The todos are stored as a JSON application 

##To run test 
Ruby 1.9.3 or newer is required and to use HTTParty and RSpec: 
            bundle install 
can be used to install the same gems I utilised 
These tests can be run using RSpec:     
            bundle exec rspec 
            
##Structure

| README file 
| Test 1 - Empty collection 
| Test 2 - Non-empty collection
| Test 3 - Non-Existing object 
| Test 4 - Existing object 

###URL(link)
Used this method to simplify typing the specific url continuously. An example on this project is HTTParty.get url(link), link would be                 ("/todos")
Therefore: 
            http://lacedeamon.spartaglobal.com/todos

###Create_todos 
Creates an arrays which holds all the todos from a hash

###Delete_all 

It deletes all the curent todos, can be run before or after tests 


##Status 

This project is so I can learn RSpec with HTTParty confidently , if you any enquiries, email me: <aoloyede@testingcircle.com>