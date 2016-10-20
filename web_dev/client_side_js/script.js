console.log("test")

var texts = document.getElementsByTagName("body")
var text=texts[0]
text.style.fontFamily = "Helvetica"

var articles = document.getElementsByTagName("article")
var article=articles[0]


function addPadding(event) {
  event.target.style.padding = "10px"
}

article.addEventListener("click", addPadding)