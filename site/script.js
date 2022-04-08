async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    var siteHits = JSON.stringify(data.body.Item.visits)
    return siteHits
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

var visitCount = getCount('https://api.aaronlangley.net/getCount');
