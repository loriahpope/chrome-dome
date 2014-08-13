#chrome-dome
##My first(ish) attempt at learning Ruby on Rails
###It's a Budget Tracker. Or will be. Hopefully.


####I tried out a couple of different tutorials before starting this project, including:

-[Code Academy](http://www.codecademy.com/en/tracks/ruby)

-[Try Ruby](http://tryruby.org/levels/1/challenges/0)

-[Rails for Zombies](http://railsforzombies.org/levels/1)

-[Team Treehouse](http://teamtreehouse.com/library/build-a-simple-ruby-on-rails-application)

####And then I realized I had to actually install Ruby and Rails on my Machine. I'm using Mac OSX Mavericks, so the installation tutorial in Rails for Zombies wasn't actually helpful

[This tutorial](https://gorails.com/setup/osx/10.9-mavericks) was pretty much all I needed to get started, although the following links were helpful as well:

(http://guides.rubyonrails.org/getting_started.html)
(http://brettu.com/ruby-ruby-tips-217-installing-rails-4-0-0-on-ruby-2-0-0-p247/)
(http://12devs.co.uk/articles/writing-a-web-application-with-ruby-on-rails/)

The tutorial I used sort of walks you through how to start a new project, but I'll just reiterate it:
In Terminal, after you've finished all the installations, type **rails new name -d mysql**, where name is the name of your new Rails application.

Move into the newly created **name** folder, which should now have a ton of different folders that are incredibly confusing. 

Create the new database to store all of your information by typing rake db:create into your terminal window.

Finally, to start the server, just type **rails server**. You'll get the new address of your database, but it's typically http://localhost:3000. 

Of course, nothing will be there yet. So press Ctrl+C to stop the server, and create your database. You'll do this by typing: rails generate scaffold **name of new database** and then the headers of each column followed by a colon and its respective data type. For example, if I wanted to create a Date column of dates, I would type **rails generate scaffold dates Date:date**

Then type rake db:migrate into your Terminal and type rails server again to restart the server. When you reload the page, add **/name of new database** to the URL, and you should see your new database! For example, my new URL would be **http://localhost:3000/dates**

