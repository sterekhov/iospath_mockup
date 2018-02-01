var exec = require('cordova/exec');

exports.getUrlFilename = function (arg0, success, error) {
    exec(success, error, 'VInterface', 'getUrlFilename', [arg0]);
};

exports.getCacheUrl = function (arg0, arg1, success, error) {
    exec(success, error, 'VInterface', 'getCacheUrl', [arg0, arg1]);
};