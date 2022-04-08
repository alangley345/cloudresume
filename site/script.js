async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    return data.body.Item.visits
}

fetch('https://api.aaronlangley.net/updateCount');

var visitCount = JSON.stringify(getCount('https://api.aaronlangley.net/getCount'))
