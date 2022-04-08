function getCount(url) {
    fetch(url)
        .then(response =>response.json())
        .then(data => JSON.stringify(data.body.Items.visits))
    return data
}

fetch('https://api.aaronlangley.net/updateCount');

console.log(getCount('https://api.aaronlangley.net/getCount'));

visitorCount = "1"
