async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    return data
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');
console.log(data)

visitCount = "test";