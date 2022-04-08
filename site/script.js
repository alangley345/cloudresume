async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    var visitCount = JSON.stringify(data.body.Item.visits)
    console.log(visitCount)
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

visitCount = "10000"