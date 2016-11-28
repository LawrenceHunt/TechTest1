TECH TEST WEEK - MONDAY
=======================

THE BRIEF
---------

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

If you finish, you can work on saving the data to a file."

MY SOLUTION
-----------

I used a basic Sinatra build for this solution, which consists of 2 routes:

- when routed to '/set?somekey=somevalue', it saves the key and value pair.
- when routed to '/get?key=somekey', it returns the value for that key.

I considered using sessions to store the key and value pair, but concluded that a class instance variable would allow it to store multiple pairs.

CLASSES
-------

I created a key_value class to hold the key and value data.
I then created a key_value_array to hold an array of these key_value objects.

I created a class instance variable for the key_value_array, which can be accessed from both routes.

NEXT STEPS?
----------

A visual UI might be a next logical step.

INSTALLATION INSTRUCTIONS
------------------------

- git clone this repo
- hit 'bundle' on your command line
- run 'ruby app.rb'
- set your browser window to 'localhost:4000'
