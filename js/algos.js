function longest(array){
  var longest=""
  for (var i=0; i<array.length-1; i++) {
    if (array[i].length>longest.length){
      longest=array[i]
    }
  }
  return longest;

}

// console.log(longest(["test","these","words","superb","ok"]))

function generate(length){
  var end_array=[]
  for (var i=0; i<length; i++){
    var num_of_letters=Math.floor(Math.random()*(11)+1)
    var possible="abcdefghijklmnopqrstuvwxyz"
    var for_arr=""
    for (var x=0; x<num_of_letters; x++){
      for_arr+= possible.charAt(Math.floor(Math.random()*possible.length))
    }
    end_array.push(for_arr)
  }
  return end_array
}

function obj_compare(obj1, obj2){
  var arr1=[]
  var arr2=[]
  var final_arr=[]
  for (var item in obj1){
    arr1.push(item + ":"+ obj1[item])
  }
  for (var item in obj2){
    arr2.push(item + ":"+ obj2[item])
  }
  for (var i in arr1){
    for (var i2=0; i2<arr2.length; i2++){
      if (arr2[i2]==arr1[i]){
        final_arr.push(arr1[i])
      }
    }
  }
  return final_arr
}
var obj1={"key1": "value1", "key2": "value2", "key3": "value3", }
var obj2={"key11": "value11", "key2": "value2", "key33": "value33", }
console.log(obj_compare(obj1, obj2))

for (var i=0; i<10; i++) {
  console.log(longest(generate(10)))
}

