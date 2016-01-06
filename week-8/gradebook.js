/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
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