async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    var visitCount = JSON.stringify(data.body.Item.visits)
    return visitCount
}

fetch('https://api.aaronlangley.net/updateCount');
visitCount = new getCount('https://api.aaronlangley.net/getCount');
