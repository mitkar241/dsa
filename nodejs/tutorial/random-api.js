/*
@description: This file curls Random API and prints output.
node random-api.js 5
*/
const request = require('request');

const args = process.argv.slice(2);
let size = args[0];

request('https://random-data-api.com/api/address/random_address?size=' + size, (error, response, body) => {
    if (error) {
        console.error(`Could not send request to API: ${error.message}`);
        return;
    }

    if (response.statusCode != 200) {
        console.error(`Expected status code 200 but received ${response.statusCode}.`);
        return;
    }

    console.log('Processing our list of Addresses');
    addrs = JSON.parse(body);
    addrs.forEach(addr => {
        console.log(`${addr['city']}, ${addr['street_name']}, ${addr['street_address']}`);
    });
});
