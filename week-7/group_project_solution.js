var list = []
var math = {
  sum: function(list){
    return list.reduce( (prev, curr) => prev + curr );
  },
  mean: function(list){
    var average = math.sum(list)/list.length;
    return average;
  },
  median: function(list){
    list = list.sort( function(a,b) {return a - b;} );
    var half = parseInt(list.length/2);
    return list.length % 2 == 1 ?
    list[half] :
    (list[half] + list[half - 1])/2.0;
  }
}