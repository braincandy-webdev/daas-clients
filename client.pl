#!/usr/bin/perl
use strict;
use JSON;
use REST::Client;

sub get_char {
    my ($char) = @_;
    my $api_url = "http://diacritic.braincandy.com.ar";
    my $api_resource = "/api/char/" . $char;
    my $request = REST::Client->new({ host => $api_url });
    $request->GET($api_resource);
    my $json = JSON::from_json($request->responseContent);

    foreach ($json->{'output'}) {
        print @$_;
    }
    print "\n";
}

my ($char) = @ARGV;
if( defined $char){
    binmode(STDOUT, ":utf8");
    get_char $char;
}
else{
    print "Usage: $0 [char] \n";
}
