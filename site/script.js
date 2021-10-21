var update = new XMLHttpRequest()
update.open('GET', 'https://api.aaronlangley.net/updateVisitorCount/', true)
update.setRequestHeader("Content-Type", "application/json");
update.send()