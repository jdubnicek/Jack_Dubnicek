Hello and welcome to the app "Your Menu"!

This app was built using Ruby version 2.3.1 and Rails version 5.0.4.

This application uses Paperclip for image uploading.  Paperclip has a dependency on ImageMagick which the user will need to install if they dont already have it on their system.  The user can run ```which convert``` and if it returns a path, ImageMagick is already installed on the User's system.  If not, full information on how to install ImageMagick can be found here ```https://github.com/thoughtbot/paperclip```.  

To run this application:

In your terminal please navigate to the root folder of the application and run ```bundle install```.

Once complete create and seed the database by entering ```rails db:create db:migrate db:seed```.

Start the server by running ```RAILS_ENV=development rails s```.

In your browser, navigate to ```localhost:3000```.  You should see the home page of the application.

Any questions please email ```jdubnicek@gmail.com```

Thanks!
