'use strict';

var q = require('q'),
		shell = require('shell');

function Setup(host) {
		var user;
		
		function validateHost() {
				var re = /^[a-zA-Z0-9][a-zA-Z0-9-]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,}$/;
				if(!re.test(host)){
					throw new Error("host is invalid");
				}
		}

  function generateUser() {
			user = host.replace(/\./g,'_');
  }

  function cloneEdin() {
			console.log(user);
  }

  function run() {
    return q.fcall(validateHost)
    .then(generateUser)
		.then(cloneEdin);
  }

  return { 
    run : run
  };
};

//create user
//git clone edin
//generate certificate for mongod
//generate certificate for user
//config nginx
//test site



module.exports = exports = Setup;