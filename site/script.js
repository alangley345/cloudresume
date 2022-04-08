function getCount(url) {
    response = fetch(url)
    .then(response => response.json())
    .then(data => response.JSON.stringify(data.body.Item.visit))
    .then(
        console.log(data)
    )
}

fetch('https://api.aaronlangley.net/updateCount');

var visitCount = "Banana"

getCount('https://api.aaronlangley.net/getCount')
