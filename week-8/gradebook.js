/*
Gradebook from Names and Scores
I worked on this challenge with Michal.
This challenge took me 1 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

for (var x = 0; x < students.length; x++){
  gradebook[students[x]] = {}
  gradebook[students[x]]["testScores"] = scores[x]
};

gradebook.addScore = function(name, score){
  gradebook[name]["testScores"].push(score)
};

gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
};

function average(arr_ints) {
  return (arr_ints.reduce( function(a,b) { return a+b }))/arr_ints.length
}


gradebook.addScore("Joseph", 90);

console.log(gradebook);
console.log(gradebook.getAverage("Susan"));

/*
What did you learn about adding functions to objects?

It's very easy to just add via dot or bracket notation in a way that seems simpler than what you could do in a has in Ruby.

How did you iterate over nested arrays in JavaScript?

We just used multiple brackets to access inner arrays when necessary, but otherwise you can just use a simple for loop, or the forEach method.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

We incorporated the reduce method, which is actually more intuitive than in Ruby because Ruby's syntax for adding via reduce, while succinct, is not clear to me yet. Whereas in JS, you just define the function you want to aggregate the results. Very clean, even if it requires a bit more typing.

*/