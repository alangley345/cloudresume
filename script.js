// Create a request variable and assign a new XMLHttpRequest object to it.
var update = new XMLHttpRequest()

// Open a new connection, using the GET request on the URL endpoint
update.open('GET', 'https://api.aaronlangley.net/updateVisitorCount', true)

// Send request
update.send()