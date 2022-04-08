function getCount(url) {
    return fetch(url)
        .then(response =>{return response.json()})
        .then(data => {return data.resolve(JSON.stringify(data.body.Item.visits))})
}

function visits() {
    var visitCount;
    getCount('https://api.aaronlangley.net/getCount').then(data => { return visitCount = data});
}

fetch('https://api.aaronlangley.net/updateCount');

visitCount = new visits();
