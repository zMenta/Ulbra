const person_data = [
    {name: "Pablo", age: 32},
    {name: "Angel", age: 15},
    {name: "Katarine", age: 62},
]

function on_init(){
    const my_array = document.getElementById("my_array")

    my_array.innerHTML = person_list_component(person_data)
}


function person_list_component(data){
    return data.map(item => {
        return (
            `<li>${item.name} - ${item.age}</li>`
        )
    }).join("")
}

