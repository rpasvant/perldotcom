#!perl -w

# -- SOAP::Lite -- guide.soaplite.com -- Copyright (C) 2001 Paul Kulchenko --

use SOAP::Lite;

my $soap = SOAP::Lite                                        
  -> uri('http://www.soaplite.com/Temperatures')                                     
  -> proxy('http://services.soaplite.com/temper.cgi');

print $soap                                                  
  -> c2f(37.5)                                               
  -> result;
