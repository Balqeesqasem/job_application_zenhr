# README

Job Board backend API 

Admin credential: 

  Email: admin.zainhr@gmail.com
  Password: 123456789

You can do all required functionality( Add job, view job applications, update job)  

Job seekers can sign up by the following: 
  
  Endpoint:   
     
    https://job-application.herokuapp.com/auth

  Requirement: 

    The new user should send his email and password to pe part of our application.

Job seekers can sign in by the following: 
  
  Endpoint:  
  
    https://job-application.herokuapp.com/auth/sign_in

  Requirement: 

    The new user should send his email and password to be able using the app.    


You can always get current account after sign-in by the following:

   1- Set uid, client and access-token whish will return with sign in headers response
   2- hit the following endpoint : https://job-application.herokuapp.com/v1/current

For the rest of created endpoints you can access my postman documentation here which contain all endpoints with multiple responses examples:
    
    [Postman Documentation](https://documenter.getpostman.com/view/11123143/2s8ZDSbk2E)
    

   