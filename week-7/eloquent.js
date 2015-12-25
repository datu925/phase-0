// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var my_string = "Hello, ";
my_string = my_string + "world!";


//food program
var food = prompt("What's your favorite food?");
alert("That's my fave too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//FizzBuzz

for (var i = 1; i <= 100; i++) {
  if (i % 3 == 0 && i % 5)
    console.log("FizzBuzz");
  else if (i % 3 == 0)
    console.log("Fizz");
  else if (i % 5 == 0)
    console.log("Buzz");
  else
    console.log(i);
}

// Functions

// Complete the `minimum` exercise.

function min(a,b) {
    return (a < b) ? a : b;
}

console.log(min(40, 50))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {

  name: Dan,
  age: 27,
  favorite_foods: [spaghetti, apple pie, brisket],
  quirk: "I don't burp."

}