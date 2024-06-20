const express = require('express');
const app = express();

// CORS middleware
app.use(function(req, res, next) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  next();
});

app.use(express.static('/home/delameta/rananum/rtsp'));

app.listen(8000, () => {
  console.log('Server running on http://localhost:8000');
});
