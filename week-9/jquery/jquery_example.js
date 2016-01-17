// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  bodyElement = $('body')
  image = $('img')
  image.css("position", "absolute")
  image.css("left", "0")

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  mytitle = $('body > h1')
  mytitle.css("background-color", "white")
  mytitle.css("border", "5px solid black")
  mytitle.css("visibility", "visible")
  $('div.mascot h1').html("Squirrels!")

//RELEASE 4: Event Listener
  // Add the code for the event listener here


  // $('img').hover(function(e){
  //   e.preventDefault()
  //   $(this).attr('src', 'http://www.wormsandgermsblog.com/files/2010/09/Baby-squirrel1.jpg')
  // }, function(e){
  //   e.preventDefault()
  //   $(this).attr('src', 'dbc_logo.png')
  // })

//RELEASE 5: Experiment on your own

$('img').click(function() {
  $('img').animate({
    left: "500px",
    height: "0px"
  }, 1500, "linear");
})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.
