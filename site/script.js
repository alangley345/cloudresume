function getCount() {
    fetch('https://api.aaronlangley.net/getCount')
        .then(response => response.json())
        .then(result => {console.log(result)})
}

fetch('https://api.aaronlangley.net/updateCount');
getCount();

visitCount = "test";


