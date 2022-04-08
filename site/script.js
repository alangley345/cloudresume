function updateCount() {
    fetch('https://api.aaronlangley.net/updateCount')
}

//document.getElementById("visits").innerHTML = "1";

function getCount() {
    fetch('https://api.aaronlangley.net/getCount')
    .then(data => {
    return data.json();
    })
    .then(Item => {
    console.log(Item.visits);
    });
}

updateCount()
visitCount = getCount()

