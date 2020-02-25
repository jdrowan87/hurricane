# hurricane
Project 2 - Against the Wind

Project 2 - Against the Wind
Team member choice due 2/17/20 at 8:59 pm Chicago time
Project alpha version due 3/2/20 at 8:59 pm Chicago time
Project final version due 3/16/20 at 8:59 pm Chicago time

Project 2 will be the first group project and will and will focus on geographic data, in particular the paths that hurricanes (tropical cyclones) take in the Atlantic and Pacific oceans. It will give you experience in plotting data onto maps, in this case using leaflet. The application should help the user investigate where are the most likely places for hurricanes to strike, where the most damaging hurricanes strike, seasonal variation, and trends over time. As with all the projects your app will be evaluated running full screen on the classroom wall with touch enabled, so make sure all of your controls are reachable by a reasonably sized human without needing a step ladder.

The standard group size will be 1-3 people per group. You can chose who you want to be in a group with. Be sure to take a look at the project 1 web pages to get a better idea of people's abilities as you form your teams. Once you have a team (even if it is a team of size 1) please send Andy an email CC'd to all the team members confirming that you are a group.

You should very quickly set up a web page for your group project and send the URL to andy. The final web page for the project will be public; the in-process web pages do not need to be public as long as andy and the TA have access. Each Friday of the project each team member should post on the project web site an overview of what he/she did on the project that week. This comes in handy when assigning ratings to your collaborators and making sure that everyone is contributing in a timely fashion.

As there will be slightly larger file sizes this time (10MB instead of 3 MB) you may want to do some pre-processing on the files. This is ok as long as it is an automated process that can be re-run to convert the downloaded datafiles into the versions your application uses, and in particular andy and the TA need to be able to easy re-run this pre-processing.

In this project we are going to investigate the paths that hurricanes take, related to the time of year and their destructive potential.


The data for the project comes from:
the Atlantic hurricane database (HURDAT2) 1851-2018 and the Northeast and North Central Pacific hurricane database (HURDAT2) 1949-2018  at http://www.nhc.noaa.gov/data/#hurdat

Information on the file format:
http://www.aoml.noaa.gov/hrd/hurdat/hurdat2-format-may2015.pdf

We will use leaflet (http://leafletjs.com) as our map rendering library.



For a C you need to create a useful, responsive interactive visualization with the following features

at startup the application should show all the Atlantic hurricanes from the most recent season (2018) in an appropriately centered and zoomed map. The app should provide a list of Atlantic hurricanes since 2005 and let the user show all of them, all of them for a given year, one particular hurricane, and the top 10 overall (top here being related to max wind speed). The complete path information for all of the selected hurricanes should appear on the leaflet map. The user should be able to interactively turn on or off the display of a particular hurricane from the list.
The path of each hurricane should show the magnitude of each hurricane during its lifetime either through the color / size of the line or using glyphs
the user should be able to order the list of hurricanes either chronologically, or alphabetically, or by max wind speed, or minimum pressure.
allow the user to easily pick a day (e.g. September 14, 2003) and show where all the hurricanes are on that day (including those that are still active and were or will be hurricanes) and their full paths.
provide overview graphs showing the number of hurricanes per year since 2005, and how many had their maximum strength in each category (tropical depression, tropical storm, hurricane category 1, 2, 3, 4, 5)
ability bring up information on the dashboard about who wrote the project, what libraries are being used to visualize it, where the data came from, etc.

For a B you need to add:

add a second linked visualization for the Northeast and North Central Pacific data set - the wall has enough space to show maps of both the Pacific and Atlantic at the same time or a single map showing both.
provide a list of hurricanes since the beginning of the data files and let the user show all of them, all of them for a given year, or the top 10 overall. Note that only recent hurricanes have names so you need an appropriate way of identifying them to the user.
allow the user to filter which hurricanes are displayed based on whether the hurricane made landfall or not.
allow the user to filter which hurricanes are displayed  based on max wind speed or minimum pressure.
provide separate graphs showing the total number of hurricanes each year in the Atlantic and Pacific and how many were in each category
provide a line graph showing the max wind speed of the hurricanes over a year (X axis is days of the year, Y axis is wind speed) for all of the hurricanes in the data set with one line for the Atlantic hurricanes and one for the Pacific hurricanes. Create a similar graph for minimum pressure.
allow the user to show the wind speed and/or pressure overlaid on the hurricane path information (this could be changing the line color and/or thickness, or showing the data through a glyph at the different known points, or some other appropriate visualization of your choice). This can replace the hurricane magnitude information when its being shown as long as the user can choose which to show.
allow the user to change the underlying map representation to another appropriate representation.

For an A you need to add:
allow the user to pan / zoom / and reset the view of each of the maps to get a closer look at the hurricane paths. All of your visualizations should scale appropriately to be visible in the new view.
show a graph of overall data for each month of the year (i.e. combining September for all of the years in the data set) showing number of hurricanes, allow the user to filter the data based on max wind speed and/or min pressure and/or Atlantic / Pacific / both. This should help the user find when are hurricanes most frequent and when are the most dangerous ones more frequent.
use the remaining columns of the data file to show the extent of the different wind speeds of the hurricanes. You don't need to show each quadrant separately - come up with a reasonable way to combine the pieces of data and defend it in your documentation. The key thing here is that a hurricane is not a point, its winds can cover a very large geographic area and your visualization should show the extent of its damaging winds.

Graduate Students need to add:
create a heat map style visualization showing the relative badness of places to live related to hurricanes - note that this is intentionally vague. come up with a reasonable definition of badness and how to represent it and defend it in your documentation.
research some particularly interesting hurricanes and create a list of your 5 favorites and use your interface to allow the user to investigate them
In all of these case you need to make sure that your visualizations are well constructed with good color and font choices, proper labeling, and that they effectively reveal the truth about the data to the user

Note that as part of the web page part of the grade you will need to use your interface to show your findings, so make sure that the way your interface displays information is clear.

As with all the projects your app will be evaluated running full screen on the classroom wall with touch and should not require scrolling

For this project we will host your solutions through the shiny.evl.uic.edu site

I highly recommend using github or bitcucket or a similar service to deal with your project management - it makes it easy to see who did what when, easy to roll back changes, keeps copies of the code safe, etc.

There are two deadlines for this project. By the first deadline you should have implemented the initial screen layout of your application and have the basic functionality allowing the user to perform an example of the various 'C' functionality. This will make sure that your group is on track and that you can focus on making a good interface and set of visualizations, not just functional ones. Personally, I think you should have the entire C functionality done at that point if you are going for an A on the project as a whole. You should make a link to this version of the interface available on your group project page.

As part of the final turn in you should create a set of web pages that describe your work on the project. This should include:
1 page with a link to your visualization solution and a description of how to use your application and the things you can do with it.
1 page on the data you used, including where you got it, what you did to it.
1 page with links to a zip file containing your well commented source code, additionally needed data files, and any instructions necessary to run it. These instructions should start from the assumption that the reader has a web browser on their computer and tell the user everything else he/she needs to know and do to get it running using R studio.
1 page on what interesting things you found using your application. This one is particularly important. Show that you can use your application to find interesting things in the dataset and show the screenshots to prove it.
1 page on the roles of the different team members
all of which should have plenty of screenshots with meaningful captions. Web pages like this can be very helpful later on in helping you build up a portfolio of your work when you start looking for a job so please put some effort into it.

Be sure to document any external libraries, tools, etc. that you make use of - give credit where credit is due for everything that you didn't create yourself.

You should also create a 2-3 minute YouTube video showing the use of your application including narration with decent audio quality. That video should be in a very obvious place on your main project web page. The best way to do this is to use a smartphone to shoot video of one of your teammates interacting with the application on the classroom wall. You can also use a screen-capture tool while interacting with your application, though you will most likely find its useful to do some editing afterwards to tighten the video up. Its a good idea to have a video like this available as a backup during your presentation just in case of gremlins.

The web page including screen snapshots and video need to be done by the deadline so be sure to leave enough time to get that work done.

I will be linking your web page to the course notes so please send me a nice jpg image of your visualization for the web. This should be named p2.<someone_in_your_groups_last_name>.jpg. 


When the project is done, each person in the group should also send Andy a private email with no one else CC'd ranking your coworkers on the project on a scale from 1 (low) to 5 (high) in terms of how good a coworker they were on the project. If you never want to work with them again, give them a 1. If this person would be a first choice for a partner on a future project then give them a 5. If they did what was expected but nothing particularly good or bad then give them a 3. By default your score should be 3 unless you have a particular reason to increase or decrease the number. If you are giving a score other than 3 you need to say why. Please confine your responses to 1, 2, 3, 4, 5 and no 1/3ds or .5s please. Each person's score on the project will be based on the overall score for the group modified by these rankings.


Each group will show their visualization to the class and describe its features. This allows everyone to see a variety of solutions to the problem, and a variety of implementations. Rehearse your presentation ... several times. All team members are expected to participate equally in that presentation.


Has a group:

1. Vijay Vemu, Kevin Kowalski, Samuel Kajah
2. Desiree Murray, Amy Ngo, Angela Timochina
3. Syed Hadi, Sean Stiely, Joshua Rowan
4. Nicholas Abbasi, Brandon Graver, Ho Chon
5. Matt Jankowski, Charly Sandoval, Amber Little
6. Ansul Goenka, Parikshit Solunke
7. Aashish Agrawal, Ivan Madrid, Richard Miramontes
8. Prachal Patel, Zohar Sajith, Usman Siddiqui
9. Abdul Latif, Imaad Sohraab, Jaoudat Karime
10. ?
11. ?


There was some interest in class in being able to use plotly on the project. It has are some nice capabilities but if you rely on the basic controls you can create some really bad / unusable visualizations, so you are going to want to have your own controls to make sure the user can easily see what they need to see and not just provide controls that do things for the sake of doing them, because its very easy to overwhelm the user with buttons and in a few clicks make the visualizations unreadable. Engineers really love giving users increased capabilities without thinking enough about how doing that can make people's lives more difficult. So ... using plotly is OK on the assignment, but be aware that it can be a trap.

There is a virtual machine set up in evl to serve shiny/R applications.

This should show my evl weather app running in evl - http://shiny.evl.uic.edu:3838/evlweather

you should be able to ssh into shiny.evl.uic.edu on port 2222 as user gX where X is your group number. We will talk about the passwords in class. Please change the password ASAP.

and then you will find the directory /srv/shiny-server/gX/app_name
where you can place your files in the app_name directory

and then you should be able to see the app running as http://shiny.evl.uic.edu:3838/gX/app_name


you can get a list of the installed packages on shiny.evl.uic.edu
> installed.packages()[,1:2]

       
error logs can be found in /var/log/shiny-server/


last revision  2/18/2020 - updating groups
