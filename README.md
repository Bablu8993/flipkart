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
    
      rake db:create
      rake db:migrate
      rake db:seed {For admin user creation}
      
* Admin user details
    
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
      
* NOTE Use corrent category, item name while creating ordering kartin        

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

* how to see all items 
	
	  gem localhost:3002/items
	  
  You will gem response like this
  	
		[
		    {
			"items_category_wise": {
			    "item_name": "Usha Fan",
			    "category_name": "Electronics",
			    "quantity": 20,
			    "price": "Rs. 2700.0",
			    "arrived in stock": "3 minutes ago"
			}
		    }
		]

* How to add item in your kart
	
	  POST localhost:3002/kart
	  
In body of request( for example )
	  
	  {
		"karts":[
			{
			    "ref_id": 1,
			    "name":"name of item",
			    "quantity": no. of quantity you want to order
			}
		 ]
	  }
	  
See all items in kart
	
	get localhost:3002/karts

Will get response like this
		
		[
		    {
			"item": "Usha Fan",
			"price": 2700,
			"quantity": 2,
			"total_price_to_pary": 5400,
			"expected_delivery_date": "from today is 2019-02-17 07:47:11 UTC"
		    }
		]
		
* How to order 
	
	  POST localhost:3002/order/create
	  
In request body	  

	  {
		"orders":[
		   {
		        "ref_id": 1,
			"name":"Usha Fan",
			"quantity":2
		   }
		 ]
	 }

* how to see your all orders
		
		get localhost:3002/orders
		
You wil see the response like
	
	[
	    {
		"order_no": "8cacf7da2f6f5f1453c88d4f09ff7d83",
		"item": "Usha Fan",
		"price": 2700,
		"quantity": 2,
		"total_cost": 5400,
		"order_date": "2 minutes ago",
		"delivery_status": "will be delivered on  2019-02-17 07:53:35 UTC"
	    }
	]
	  
	  
	
	
	
	
	

* ...

