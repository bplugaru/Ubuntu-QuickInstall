'use strict';

var q = require('q'),
    program = require('commander'),
    pj = require('./package.json'),
    Setup = require('./lib/setup')
    ;


function main(args, callback, errback) {
  var defferd = q.defer();
  program
  .version(pj.version)
  .command('setup [host]','Setup new environment')
  .action(function(host){
    if(!host) {
      defferd.reject('host it\'s required');
    }
    //
  
		Setup(host).run().done(function(result){
      console.log("done");
    }, function(error){
      console.log(error);
      defferd.reject(error);
    });
  })
  .parse(args);
  return defferd.promise;
}

module.exports = main;

