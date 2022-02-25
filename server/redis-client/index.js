const { createClient } = require('redis');

const client = createClient({
    url:  'redis://cache_db:6379',
     });

  client.on('error', (err) => console.log('Redis Client Error', err));
  client.on('connect', () => console.log('#### Redis Client Connected! ####'));
  
  client.connect();

module.exports = client