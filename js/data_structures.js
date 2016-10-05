var colors=["Green", "Red", "Blue", "Yellow"]
var names=["Silver", "Secretariat", "Seabiscuit", "Buck"]

colors.push("Purple")
names.push("Spirit")

console.log(colors)
console.log(names)

var horses={}

// Use a for loop, that increments, and for each incrementation
// assign the color of that index to the horse of that index
// within our hash

for (var i=0; i<colors.length; i++)
{
  horses[names[i]]=colors[i]
}

console.log(horses)