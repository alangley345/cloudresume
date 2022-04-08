function getCount(url) {
    fetch(url)
        .then(response => response.json())
        .then(data => JSON.stringify(data.body.Item.visits))
        .then(data => sessionStorage.setItem(visitCount));
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

console.log(visitCount);