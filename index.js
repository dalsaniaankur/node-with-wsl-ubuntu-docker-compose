// server.js
const express = require('express');
//Create an app
const app = express();
app.get('/', (req, res) => {
    res.send('Node.js application is working!\n');
});
//Listen port
const PORT = 3000;
app.listen(PORT);
console.log(`Running on port ${PORT}`);