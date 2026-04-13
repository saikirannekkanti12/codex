import express from "express";

const app = express();
const port = 80;
const apiUrl = process.env.API_URL || "http://localhost:5000";

app.get("/", (_req, res) => {
  res.send(`<!doctype html>
<html>
<head><meta charset="utf-8"><title>E-Shop</title></head>
<body style="font-family:Arial;max-width:800px;margin:20px auto;">
  <h1>E-Shop Corp</h1>
  <p>Simple 3-tier demo storefront.</p>
  <button onclick="loadProducts()">Load products</button>
  <ul id="products"></ul>
  <script>
    async function loadProducts() {
      const resp = await fetch('${apiUrl}/products');
      const data = await resp.json();
      const root = document.getElementById('products');
      root.innerHTML = data.map(p => '<li>' + p.name + ' - $' + p.price.toFixed(2) + '</li>').join('');
    }
  </script>
</body>
</html>`);
});

app.listen(port, () => {
  console.log(`frontend listening on ${port}, api=${apiUrl}`);
});
