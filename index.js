const _ = require('lodash');
const { keys, sampleSize, pipe, join } = require('lodash/fp');

pipe(
    keys,
    sampleSize(10),
    join(', '),
    console.log
)(_);