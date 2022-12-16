const exepress = require("express");

const app = exepress();
const path = require('path');

app.listen(777);

app.use(exepress.static(path.join(__dirname)));
