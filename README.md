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

Move into the newly created **name** folder, which should now have a ton of different folders that are incredibly confusing (for now!). 

Create the new database to store all of your information by typing rake db:create into your terminal window.

Finally, to start the server, just type **rails server**. You'll get the new address of your database, but it's typically http://0.0.0.0:3000. 

Of course, nothing will be there yet. So press Ctrl+C to stop the server, and create your database. You'll do this by typing: rails generate scaffold **name of new database** and then the headers of each column followed by a colon and its respective data type. 
When starting this project, I typed: **rails generate scaffold recordExpenses date:date location:string purchaseDescription:string amount:decimal paymentType:string**


Then type rake db:migrate into your Terminal and type rails server again to restart the server. When you reload the page, add **/name of new database** to the URL, and you should see your new database! For example, my new URL would be **http://0.0.0.0:3000/record_expenses**

###Okay, onto what I'm actually doing:

First, just go ahead and open up that entire new folder that was created into your text editor. The files I've been working with primarily are:
**chrome-dome > stylesheets > record_expenses.css.scss** (This is where you'll write all the CSS for this page. If you save and refresh, you should see the changes immediately.)

**chrome-dome > views > layouts > application.html.erb**, where *erb* stands for Embedded Ruby (I think), so it's basically just an HTML file that includes Ruby, as evidenced by the <%= %>, which is where all of your inline Ruby hubub goes.
There's not too much going on here, but I did add a div class of "rubyBudget" around the yield ruby script that was already there so I could find it in my CSS. 

**chrome-dome > views > record_expenses**
I've used almost every file in here so far, but primarily index.html.erb, because that's the main markup of the page. I modified some of the column headers and added a Total column, and I'm currently trying to figure out how to sum up the objects in the "amount" column.

I haven't really used too many of the other files, but I did add something called "formats.rb" to **config > initializers**. Anything you modify in this directory will only be reflected if you quit the server in terminal (Ctrl+C) and then restart it using rails server.

I added this file because I have no idea who writes their dates like "YYYY-MM-DD", and I wanted to change the format of the Date and Time. All this looks like is:
>Date::DATE_FORMATS[:default]="%m/%d/%y"

>Time::DATE_FORMATS[:default]="%m/%d/%y %H:%M"

where the % grabs information stored in that variable (m, d, y, H, M) created when a new form submission is made and the lowercase m, d, and y are two-digit months, days, and years. 

####MORE SOON! 




