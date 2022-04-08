function getCount(url) {
    fetch(url)
        .then(response => response.json())
        .then(data => console.log(data))
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

visitCount = "Banana"