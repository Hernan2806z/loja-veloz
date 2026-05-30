const express = require('express');
const app = express();

app.get('/status', (req, res) => {
  res.json({ servico: 'API Gateway', status: 'Online' });
});

app.listen(3000, () => {
  console.log('Rodando na porta 3000');
});