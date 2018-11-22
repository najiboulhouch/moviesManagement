MoviesManagement Web Application(Symfony2)
====================================

This small application developped in Symfony, it can help you to create a movies list and rate each movie.

My application uses Symfony version 2.8 and AJAX for an enhanced user experience.


### Download the application

clone this repository into your working directory

	git clone https://github.com/developpersgroups/moviesManagement.git

Before starting, make sure that your local system is properly configured for Symfony.

Execute the `check.php` script from the command line:

    php app/check.php

Access the `config.php` script from a browser:

    http://localhost/path-to-project/web/config.php
	
If you get any warnings or recommendations, fix them before moving on.

### Install Composer

If you don't have Composer yet, download it following the instructions on http://getcomposer.org/  or just run the following command:

    curl -s http://getcomposer.org/installer | php
	
### Install the dependencies

After you download composer, run the following command:

    php composer.phar install

### Import the database
	
You'd need to import this sql source file to your DBMS

	https://github.com/Developpersgroups/moviesManagement/blob/master/db_movies.sql    

## Run the server
	
	php app/console server:run
