async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    return JSON.stringify(data.body.Item.visits)
}

fetch('https://api.aaronlangley.net/updateCount');
visitCount = getCount('https://api.aaronlangley.net/getCount');