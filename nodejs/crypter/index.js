const { cryptocfg, encrypt, decrypt } = require('./crypter');

cryptocfg('aes-256-ctr', 'vOVH6sdmpNWjRRIqCc7rdxs01lwHzfr3', 16);

const hash = encrypt('Hello World!');

console.log(hash);

/*
{
  iv: '619ea656f16ccaf65d59258836a5f092',
  content: 'e69aa5173c7ebf832bea8e7d'
}
*/

const text = decrypt(hash);

console.log(text);

/*
Hello World!
*/
