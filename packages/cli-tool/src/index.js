#!/usr/bin/env node
const { Command } = require('commander');
const chalk = require('chalk');
const semver = require('semver');

const program = new Command();

program
  .name('fossa-test-cli')
  .version('1.0.0')
  .action(() => {
    console.log(chalk.green(`Node semver satisfies >=14: ${semver.satisfies(process.version, '>=14.0.0')}`));
  });

program.parse(process.argv);
