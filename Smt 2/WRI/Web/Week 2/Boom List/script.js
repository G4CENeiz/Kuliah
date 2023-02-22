let fruit = ['apple', 'orange', 'banana']
function list() {
    for (let i = 0; i < fruit.length; i++) {
        const element = fruit[i];
        let ul = document.getElementById("list");
        let li = document.createElement("li");
        li.appendChild(document.createTextNode(fruit[i]));
        li.setAttribute("id", i);
        ul.appendChild(li);
    }
}