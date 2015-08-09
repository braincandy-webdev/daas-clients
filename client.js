var request = require('http').request
  , argv = require('process').argv
  ;

function get_char(char){
    var http_opts = {
        host: 'diacritic.braincandy.com.ar',
        port: 80,
        path: '/api/char/{char}'.replace('{char}', char),
        method: 'GET'
    };

    var r = request(http_opts, function(response) {
        response.setEncoding('utf8');
        response.on('data', function (data) {
            data = JSON.parse(data);
            var chars = data.output.map(function(c){ return c; });
            console.log(chars.join(' '));
        });
    });

    r.end();
}

if(argv.length > 2){
    get_char(argv[2]);
}
else{
    console.log("Usage: {0} [char]".replace('{0}', argv[1]));
}
