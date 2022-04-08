function getCount(url) {
    fetch(url)
        .then(response => response.json())
        .then(data => JSON.stringify(data.body.Item.visits))
    const visits = data.values()

    return visits
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

console.log(visits)
visitCount = "Banana"