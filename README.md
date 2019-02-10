# README

This README would normally document whatever steps are necessary to get the
application up and running.
* Ruby version 2.5.1
* Rails version 5.1.0

* Make clone of application in your local machine
  run the following command in terminal
    
    1. git clone https://github.com/Bablu8993/flipkart.git
    2. go to folder in wich you clone the application and run
    
      rake db:crete
      rake db:migrate
      rake db:seed {For admin user creation}
    
* How to get tocken for admin user
  We are using postman for testing api
  
      POST localhost:3002/user_token
    
  in Body
      
      {
        "auth":
          {
            "email":"admin@example.com",
            "passowrd":"password"
          }
      }
* To create normal user

        POST localhost:3002/users/create
        
  in body of postman (For example)     
  
          {
            "user":
              {
                "username":"Electronics_12",
                "email":"user_1@gmail.com",
                "password":"1234567890"
              }
          }

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

