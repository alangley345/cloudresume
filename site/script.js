function getCount(url) {
    fetch(url)
        .then(response =>{return response.json()})
        .then(data => {return JSON.stringify(data.body.Item.visits)})
}

fetch('https://api.aaronlangley.net/updateCount');

console.log(getCount('https://api.aaronlangley.net/getCount'));

visitorCount = "1"
