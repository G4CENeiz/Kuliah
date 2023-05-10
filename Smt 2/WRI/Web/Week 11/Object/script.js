// // Object literal

// let mahasiswaLiteral = {
//     name: 'Baihaqi',
//     energy: 20,
//     run: function(cost) {
//         this.energy = this.energy - cost;
//         console.log(`Halo mein name ist ${this.name}`);
//     }
// }

// // function declaration

// function Mahasiswa(name, energy) {
//     let mahasiswa = {};
//     mahasiswa.name = name;
//     mahasiswa.energy = energy;

//     mahasiswa.eat = function(portion) {
//         this.energy += portion;
//         console.log(`Halo mein name ist ${name}`);
//     }

//     mahasiswa.run = function(miles) {
//         this.energy -= miles;
//         console.log(`${name} run for ${miles}`);
//     }
//     return mahasiswa;
// }

// let Baihaqi = Mahasiswa('Baihaqi', 20);
// 
// for (let i = 0; i < 5; i++) {
//     console.log(i);   
// }


// filter map reduce

// let arr = [1,2,3,4,5,6,7,8,9]

// // let idk = []

// // for (let i = 0; i < arr.length; i++) {
// //     idk.push(arr[i] * 2)
// // }

// let filterArr = arr.filter((a) => a >= 3)
// console.log(filterArr)

// let newarr = arr.map((num) => num * 2)
// console.log(newarr)

// let reduceArr = arr.reduce((accum, curVal) => accum + curVal)
// console.log(reduceArr)

// let chainArr = arr.filter(a => a >= 4)
//     .map(a => a * 2)
//     .reduce((accum, curVal) => accum + curVal)
// console.log(chainArr)


//  Callback
//  Synchronus callback

// function hello(name) {
//     alert(`Hello ${name}`)
// }

function displayMessage(callback) {
    const name = prompt('enter name: ')
    callback(name)
}

displayMessage(name => alert(`hello ${name}`))