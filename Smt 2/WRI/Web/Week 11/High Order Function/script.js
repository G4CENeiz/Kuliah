// filter map reduce

let arr = [1,2,3,4,5,6,7,8,9]

// let idk = []

// for (let i = 0; i < arr.length; i++) {
//     idk.push(arr[i] * 2)
// }

let filterArr = arr.filter((a) => a >= 3)
console.log(filterArr)

let newarr = arr.map((num) => num * 2)
console.log(newarr)

let reduceArr = arr.reduce((accum, curVal) => accum + curVal)
console.log(reduceArr)

let chainArr = arr.filter(a => a >= 4)
    .map(a => a * 2)
    .reduce((accum, curVal) => accum + curVal)
console.log(chainArr)