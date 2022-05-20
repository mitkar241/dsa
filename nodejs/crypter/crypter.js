/*
documentation: https://nodejs.org/api/crypto.html
*/

const crypto = require('crypto');

var cfg;

/*
Usage:
cryptocfg('aes-256-ctr', 'vOVH6sdmpNWjRRIqCc7rdxs01lwHzfr3', 16);
*/

const cryptocfg = (algorithm, secretKey, byteSize) => {
    iv = crypto.randomBytes(byteSize);
    cfg = {
        algorithm,
        secretKey,
        iv
    }
};

const encrypt = (text) => {
    const cipher = crypto.createCipheriv(cfg.algorithm, cfg.secretKey, cfg.iv);
    const encrypted = Buffer.concat([cipher.update(text), cipher.final()]);
    return {
        iv: iv.toString('hex'),
        content: encrypted.toString('hex')
    };
};

const decrypt = (hash) => {
    const decipher = crypto.createDecipheriv(cfg.algorithm, cfg.secretKey, Buffer.from(hash.iv, 'hex'));
    const decrpyted = Buffer.concat([decipher.update(Buffer.from(hash.content, 'hex')), decipher.final()]);
    return decrpyted.toString();
};

module.exports = {
    cryptocfg,
    encrypt,
    decrypt
};
