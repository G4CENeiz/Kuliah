// Object literal

// let mahasiswaLiteral = {
//     name: 'Baihaqi',
//     energy: 20,
//     run: function(cost) {
//         this.energy = this.energy - cost;
//         console.log(`Halo mein name ist ${this.name}`);
//     }
// }

// function declaration

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

// Constructor function

function Mahasiswa(name, energy) {
    mahasiswa.name = name;
    mahasiswa.energy = energy;

    mahasiswa.eat = function(portion) {
        this.energy += portion;
        console.log(`Halo mein name ist ${name}`);
    }

    mahasiswa.run = function(miles) {
        this.energy -= miles;
        console.log(`${name} run for ${miles}`);
    }
}

const Baihaqi = new Mahasiswa('Baihaqi', 20)