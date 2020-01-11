#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use D2Issue888;

D2Issue888->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use D2Issue888;
use Plack::Builder;

builder {
    enable 'Deflater';
    D2Issue888->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use D2Issue888;
use D2Issue888_admin;

use Plack::Builder;

builder {
    mount '/'      => D2Issue888->to_app;
    mount '/admin'      => D2Issue888_admin->to_app;
}

=end comment

=cut

