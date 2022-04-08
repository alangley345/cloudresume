async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    visitCount = JSON.stringify(data.body.Item.visits)
    return visitCount
}

fetch('https://api.aaronlangley.net/updateCount');
visitCount = getCount('https://api.aaronlangley.net/getCount');