#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'NetSNMP::MibProxy' );
}

diag( "Testing NetSNMP::MibProxy $NetSNMP::MibProxy::VERSION, Perl $], $^X" );
