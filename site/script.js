function getCount(url) {
    return fetch(url)
        .then(response =>{return response.json()})
        .then(data => {return data.body.Item.visits})
}

function visits() {
    let visitCount;
    getCount('https://api.aaronlangley.net/getCount').then(data => { visitCount = data});
    return visitCount;
}
fetch('https://api.aaronlangley.net/updateCount');

const visitCount = JSON.stringify(visits());
