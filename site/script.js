var update = new XMLHttpRequest()
update.open('GET', 'https://api.aaronlangley.net/updateVisitorCount/', true)
update.setRequestHeader("Content-Type", "application/json");
update.send()



function showCount() {
    var visitCount = "1";
    const id    = document.getElementById("visits");
    id.innerText = visitCount
}