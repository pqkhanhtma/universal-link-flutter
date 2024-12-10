const express = require('express');
const app = express();

// Middlewares
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use('/.well-known', express.static('.well-known'));

// Routes;
app.get('/', (req, res) => {
  res.status(200).json({
    data: 'yeap oldu',
  });
});

// Routes;
app.get('/red', (req, res) => {
  res.status(200).json({
    data: 'red',
  });
});

// Routes;
app.get('/blue/:id', (req, res) => {
  res.status(200).json({
    data: 'blue',
  });
});

// Start server
const port = 3000;
app.listen(port, () => {
  console.log(`server started on port ${port}`);
});
