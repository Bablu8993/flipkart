# README

This README would normally document whatever steps are necessary to get the
application up and running.
* Ruby version 2.5.1
* Rails version 5.1.0

* We are running our rails server on 

          localhost:3002
          
* Make clone of application in your local machine
  run the following command in terminal
    
    1. git clone https://github.com/Bablu8993/flipkart.git
    2. go to folder in wich you clone the application and run
    
      rake db:crete
      rake db:migrate
      rake db:seed {For admin user creation}
      
* Admin user deails
    
         email: admin@example.com
         password:"password"
    
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
* How to get token for admin user and normal user
  
      POST localhost:3002/user_token
      
    in body (example parameter)
      
      {
        "auth":
          {
            "email":"admin@example.com",
            "passowrd":"password"
          }
      }          

* How to use user token for login in application 
    
      get localhost:3002/auth
      
   In header of postman 
   
      key: Content-Type           value: application/json
      key: Authorization          value: Bearer token_of_user

* You will get 
          
      {
          "status": 200,
          "msg": "You are currently Logged-in as admin_user"
      }  

* How to create categories(only admin user can create)
    
      POST localhost:3002/category/create
      
  example parameter    
  
      {
        "category":{
                  "category_name" : "name of category",
                  "quantity" : number of items in category
        }
      }
      

* How to see all category

       get localhost:3002/categories 
       
  You will get(for example)
  
          [
              {
                  "category_name": "Electronics",
                  "quantity": 30
              },
              {
                  "category_name": "name of category",
                  "quantity": 30
              }

          ]

* Creating new item 

      POST localhost:3002/item/create
  in body
  
          {
          	"item":{
		"category_name":"category_name",
		"name":"name of item",
		"price":price of item in float,
		"quantity":no. of item u wnat to create
	          }
          }

* Deployment instructions

* ...

