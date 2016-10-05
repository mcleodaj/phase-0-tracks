// Pass in string to function
// for each character in the string, store in array at the "front"
// Rejoin the items of the array into the now reversed code


function reverse(str){
  var reversed=[]
  for (var i = str.length-1; i >= 0; i--) {
    reversed.push(str[i]);
  }
  var reversed_str=reversed.join('');
  return reversed_str
}
var reversed=reverse("hello")

if (1==1) {
  console.log(reversed)
}