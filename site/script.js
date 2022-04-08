function getCount(url) {
    return fetch(url)
        .then(response =>{return response.json()})
        .then(data => {return JSON.stringify(data.body.Item.visits)})
}

fetch('https://api.aaronlangley.net/updateCount');

let visitCount = getCount('https://api.aaronlangley.net/getCount').then(data => { visitCount = data});