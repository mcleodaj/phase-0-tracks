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

function Car(color, size, speed, is_safe){
  console.log("Car creation begins")
  this.color=color
  this.size=size
  this.speed=speed
  this.is_safe=is_safe

  this.honk= function() {console.log("Beep Beep!")}
  this.safety= function() {if (is_safe==true) {console.log("This car is safe")}}

  console.log("Car built!")
}

var car1= new Car("Blue", "Small", "Fast", false)
car1.honk();
car1.safety();
var car2= new Car("Green", "Small", "slow", false)
var car3= new Car("Yellow", "Medium", "Fast", true)
var car4= new Car("Red", "Small", "slow", true)
var car5= new Car("Purple", "Large", "Fast", true)
car3.safety();
car4.honk();
car5.honk();

console.log(car1, car2, car3, car4, car5)



