const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send(`
        <div style="background-color:pink; color:white; height:100vh; display:flex; justify-content:center; align-items:center; font-size:40px;">
            PINK
        </div>
    `);
});

app.listen(port, () => {
    console.log(`BLACK deployment server running on port ${port}`);
});
