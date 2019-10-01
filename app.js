const express = require('express');

const app = express();
const port = 3000;
const restaurantRouter = express.Router();

restaurantRouter.route('/restaurants')
  .get((req, res) => {
    const response = { restaurants: [{ name: 'Akaushimaru' }] };

    res.json(response);
  });

app.use('/api/v1', restaurantRouter);
app.get('/', (req, res) => res.json('Hello, world!'));

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
