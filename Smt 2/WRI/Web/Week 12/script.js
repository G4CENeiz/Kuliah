//* API Link Materi: https://restaurant-api.dicoding.dev/#/

fetch('https://restaurant-api.dicoding.dev/list', {
    method: 'GET'
}).then(res => res.json())
    .then(call)

function call(data) {
    const list = document.querySelector("ol");
    console.log(data.restaurants)
    for (const r of data.restaurants) {
        get(r.id).then((data) => {
            const restaurant = data.restaurant
            console.log(restaurant);
            const link = restaurant.pictureId;
            const li = document.createElement("li");
            li.innerHTML = `
            <h2>${restaurant.name} - ${restaurant.city}</h2>
            <img src='https://restaurant-api.dicoding.dev/images/small/${link}'></img>
            <h3>Ratings - ${restaurant.rating}</h3>
            <p>${restaurant.address}</p>
            <p>${restaurant.description}</p>
            <ul></ul>
            `;
            list.appendChild(li);

            for (const menu of restaurant.menus.foods) {
                const innerList = document.querySelector("ul")
                const innerLi = document.createElement('li')
                innerLi.innerHTML = `<p>${menu.name}</p>`
                innerList.appendChild(innerLi)
            }
        })
    }
}

function get(id) {
       return fetch(`https://restaurant-api.dicoding.dev/detail/${id}`,{
            method: 'GET'
        }).then(res => res.json())
}

