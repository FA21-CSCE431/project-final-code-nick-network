# README

README

* Ruby version

      ruby 3.0.2p107

* System dependencies

      Windows, macOs, linux

      Docker Engine

      PostgreSQL

* Configuration

     1. First download the project from github and extract it
     2. Open the console and type:
     
      docker pull dmartinez05/ruby_rails_postgresql:latest
      
     3. Open the console on the location of the project and type:
     
      docker run --rm -it --volume "${PWD}:/Nick-Network" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest
      
     4. Type the following commands to install all gems

      cd Nick-Network   
      bundle install

* Database creation and initialization
      
     1. To create the databse, type the following on the console:

      rails db:create

     2. To initialize the databse, type the following on the console:

      rails db:migrate

* Running the test suite

     1. Enter the following on the console

      rails server --binding=0.0.0.0

     2. Open an internet browser of your choice and go to
     
      http://localhost:3000/

     3. The website will be ran locally, were tests can be made

* Deployment instructions

     1. Login through administrator account in Heroku

     2. Connect Github to Heroku

     3. Deploy Application

     4. Any deploy to test-application (by pushing code to the development branch) and this will automatically be checked by CI/CD and deployed

     5. Customer deployment: https://aggie-nickwork.herokuapp.com/
     6. Development deployment: https://nick-network-dev-djg2zfhssp8z1.herokuapp.com/
      
* CI/CD

     1. Add the following file to the .github directory
    
      /.github/workflows/main.yml 

     2. This workflow.yml file can be configued to contain the appropraite Github actions; in this project's case the actions were 1) runners, 2) workflows, 3) events, 4) jobs, 5) steps, and 6) actions.
      
     3. This establishes Continuous Integration
      
     4. For Continuous Deployment, the aforementioned Heroku project must first be created

     5. Then connect the Github repository to the project

     6. Now the pipeline for CD can be set up, with a development, staging, and production application (where each application can correspond to a branch in the repository)

 
 ## Objective:
 
This website was created for an academic project that provided an organization with a place to communicate. It was made by a 6 member group taking a software engineering class.
 
 ## Pages:
Website contains the following pages: home, about us, events, meetings, news feed, gallery, products, contact, and members. 

### Home page
The landing page upon entering the website, it includes links to every other page on the navigation bar. It displays a photo of the organization and their main values.

### About Us page 
Shows more information and history about the organization, and displays the requirements to join it, and its president and officers.

### Events page
Requires the user to log in, as only users that belong to the organization can access it. It displays all events that are planned for the organization, where an administrator can create, edit, and destroy any post, while regular members can only view it.

### Meeting pages

Requires the user to log in, allows the organization to create meetings that can only be accessed by members. It’s a way to communicate with each member when there’s a meeting that will occur.

### News feed page
Requires the user to log in, allows the users to create any news that is circulating amongst the Nickwork. It allows the Nicks to be up to date on any new.

### Gallery page
Requires the user to log in, Has an accumulation of the major events the Nick’s have participated in. Allows the user to experience the events or look back at the events they had participated in.

### Contact page
Requires the user to log in, has the essential information to get hold of an officer for any questions. There is also a GroupMe link that allows the user to meet the other Nicks.

### Members page
Requires the user to log in, includes information about each member of the organization.

