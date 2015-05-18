'use strict';

var q = require("q");

function Setup() {

  function validateHost(host) {
    var re = /^[a-zA-Z0-9][a-zA-Z0-9-]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,}$/;
    if(!re.test(host)){
      throw new Error("host is invalid");
    }
  }

  function generateUser(host) {

  }

  function cloneEdin() {

  }

  function run(host) {
    return q.fcall(validateHost, host)
    .then(generateUser,host);
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