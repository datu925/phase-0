 // JavaScript Olympics

// I paired with Timur on this challenge.

// This challenge took me 2 hours.


// Warm Up




// Bulk Up

// Pseudocode
// ITERATE through array
// Add win property, defined as anonymous function that references that elements name and event

function athletes(arrAthletes){
  arrAthletes.forEach(function(element, index, array) {
    element.win = function(){console.log(element.name + " won the " + element.event + " event.")}
  });
}

// input array and driver code

var paramAthletes = [
  { name: "Sara Hughes", event: "Ladies' Single"},
  { name: "Lionel Messi", event: "World Soccer"}
];

athletes(paramAthletes);
paramAthletes[0].win();
// console.log(paramAthletes[0].win.toString());



// Jumble your words

// traverse array from the back to front
// add current letter to a new string as we go

var wordReverse = function(word){
  var newString = '';
  for (var i = word.length - 1; i >= 0; i--) {

    //console.log(word[i]);
    newString += word[i];

  }
  return newString;
}

console.log(wordReverse('!sdrow ruoy elbmuJ'));


// 2,4,6,8

// first define is_even method which will return true if mod 2 is 0 and false otherwise
// then call built-in filter function with is_even

function even_nums(arr_nums) {

  function is_even(num) {
    return (num % 2 == 0);
  }

  return arr_nums.filter(is_even);
}

console.log(even_nums([1,2,3,4,5,6]));


// "We built this city"

// create constructor function with properties that correspond to what's passed as input on the Michael Phelps line
// using || characters to account for missing input

function Athlete(name, age, sport, quote){
    this.name = name || '';
    this.age = age || '';
    this.sport = sport || '';
    this.quote = quote || '';
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

/*

What JavaScript knowledge did you solidify in this challenge?

We really struggled with the first problem - the first time through, we tried to
 traverse the array with a for loop and set the win function like this: array[i].
 name + " wins the " + array[i].event. The problem was that then the function kept
 on trying to evaluate array[i] later and either returning an error because array[i]
  was undefined, or when we tried to put some variable names in place of array[i].
  name, returning the last item in the array everytime. I still don't actually
  understand how to implement this with a for loop, though it should be possible.

My hunch was that the forEach method would actually point to each element in the array and that creating a method based on that would actually evaluate correctly when the win function was eventually called. But I don't know why that works and why the for loop doesn't.

What are constructor functions?

Constructor functions are class-like - they let you define properties and methods for what will eventually be an instance of an object, and then instantiate or initialize those instances later.

How are constructors different from Ruby classes (in your research)?

JS constructors do actually inherit from functions (whereas Ruby classes inherit from objects), and JS syntax is obviously different, particularly regarding the word 'this'. JS constructors also seem to be related to prototypes.

*/