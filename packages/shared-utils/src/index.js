const _ = require('lodash');
const { v4: uuidv4 } = require('uuid');
const { z } = require('zod');

const schema = z.object({
  id: z.string(),
  name: z.string(),
});

function makeEntity(name) {
  return schema.parse({ id: uuidv4(), name: _.startCase(name) });
}

module.exports = { makeEntity };
