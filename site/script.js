function getCount(url) {
    fetch(url)
        .then(response =>{response.json()})
        .then(data => {JSON.stringify(data.body.Item.visits)})
    return data
}

function visits() {
    var visitCount = Promise.resolve(getCount('https://api.aaronlangley.net/getCount'));
}

fetch('https://api.aaronlangley.net/updateCount');

visitCount = new visits();
