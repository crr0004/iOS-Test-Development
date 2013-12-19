var http = require("http");
var url = require("url");
var fs = require("fs");

function onRequest(request, response) {
  var pathname = url.parse(request.url).pathname;
  console.log("Request for " + pathname + " received.");
  response.writeHead(200, {"Content-Type": "image/jpg"});
  var img = fs.readFileSync('apple.jpg');
  response.write(img);
  response.end();
}

http.createServer(onRequest).listen(8888);

console.log("Server has started.");