const express = require("express");
const mongoose = require("mongoose");

const app = express();

mongoose.connect("mongodb://root:root@mongo:27107/?authSource=admin")
    .then(() => {
        console.log("Connected to db using mongoose")
    })
    .catch((e) => {
        console.error(e)
    });

app.get("/", (req, res) => {
    res.send("<h1>Hi</h1>")
});

app.listen(3000, () => { console.log("running on port 3000") })