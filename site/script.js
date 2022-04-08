function getCount(url) {
    fetch(url)
        .then(response =>{response.json()})
        .then(data => {JSON.stringify(data.body.Item.visits)})
    return fetch.resolve(data)
}

function visits() {
    var visitCount;
    getCount('https://api.aaronlangley.net/getCount').then(data => { return visitCount = data});
}

fetch('https://api.aaronlangley.net/updateCount');

visitCount = new visits();
