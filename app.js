const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send(`
        <div style="background-color:Red; color:white; height:100vh; display:flex; justify-content:center; align-items:center; font-size:40px;">
            Red Deployment
        </div>
    `);
});

app.listen(port, () => {
    console.log(`Red deployment server running on port ${port}`);
});
