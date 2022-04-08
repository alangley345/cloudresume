function getCount(url) {
    const get = fetch(url);
    get.then(response => response.json())
        .then(data => response.JSON.stringify(data.body.Item.visit))
        .then(
            console.log(data)
    )
}

fetch('https://api.aaronlangley.net/updateCount');

visitCount = "Banana"

getCount('https://api.aaronlangley.net/getCount')
