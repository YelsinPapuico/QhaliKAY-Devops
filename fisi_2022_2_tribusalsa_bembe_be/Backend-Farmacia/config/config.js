const promise = require('bluebird');
const options = {
    promiseLib: promise,
    query: (e) => {}
}

const pgp = require('pg-promise')(options);
const types = pgp.pg.types;
types.setTypeParser(1114, function(stringValue) {
    return stringValue;
});

const databaseConfig = {
    'host': 'pg07dbp01.postgres.database.azure.com',
    'port': 5432,
    'database': 'DBP_CORE',
    'user': 'UsrAppG07@pg07dbp01',
    'password': 'Squadbembe07',
    'ssl': {rejectUnauthorized:false}
};

const db = pgp(databaseConfig);

module.exports = db;