# Compost PDX
#### By **Sam Park**

Epicodus Capstone Project


## Prerequisites

You will need the following things properly installed on your computer.

* Ruby on Rails 5.0.0.1


## Description
  Compost PDX. A mock NGO that picks up food scraps from Portland's restaurants for composting. Portland restaurants sign up as users and request pick ups of their food scraps from Compost PDX. Compost PDX then composts the food scraps of Portland's restaurants in order to provide compost for Portland's community gardens. Any remaining compost will be sold at low-cost at farmers markets or can be delivered for a delivery charge for businesses/private consumers.

## Configuration

* Visit [console.developers.google.com](http://console.developers.google.com) and login to your Google account.

* Select *Credentials* from menu on left.

* Click on the *Create Credentials* dropdown menu and select *API Key*. Take note of your new API key and close the popup window.

* Select *Dashboard* from menu on left.

* Click *Enable API*.

* Search for *Google Maps JavaScript API* and *Google Static Maps API* and make sure both libraries are enabled.

Create a .env file in the project directory and save this code inside:
```
apiKey=YOUR TOKEN HERE

```

## Technologies Used

* *Application*: Ruby on Rails 5<br>
* *Testing*: Rspec, Capybara<br>
* *Database*: Postgres, ActiveRecord

Installation
------------

Install *Indie Project* by cloning the repository.  
```
$ git clone https://github.com/maskrap/indie-project.git
```

Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```
If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.

Install required gems:
```
$ bundle install
```

Run Postgres:
```
$ postgres
```

Navigate to project file and migrate database:
```
$ rake db:create
$ rake db:migrate
```

If you already have the database created on your machine:
```
$rake db:reset
```

Start the Rails webserver:
```
$ rails server
```

Navigate to `localhost:3000` in your browser of choice.

### License

This software is licensed under the MIT License.<br>
Copyright (&amp;) Sam Park
