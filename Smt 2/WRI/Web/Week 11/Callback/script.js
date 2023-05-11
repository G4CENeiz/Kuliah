//  Callback
//  Synchronus callback

function hello(name) {
    alert(`Hello ${name}`)
}

function displayMessage(callback) {
    const name = prompt('enter name: ')
    callback(name)
}

displayMessage(name => alert(`hello ${name}`))