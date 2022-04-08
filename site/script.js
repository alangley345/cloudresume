function getCount() {
    fetch('https://api.aaronlangley.net/getCount')
        .then(response => response.json())
        .then(result => {
            let visitCount = Item.visits
            console.log(visitCount)
        }
}

fetch('https://api.aaronlangley.net/updateCount');
getCount();

visitCount = "test";


