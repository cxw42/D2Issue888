package SamplePlugin;
# A test plugin for https://github.com/PerlDancer/Dancer2/issues/888

use 5.010;
use strict;
use warnings;
use Term::ANSIColor ':constants';

use Dancer2::Plugin;

BEGIN { say __PACKAGE__, ' BEGIN from ', caller || '<nowhere>'; }

plugin_keywords sample_keyword => sub {
    my $self = shift;
    say 'sample_keyword called from ', caller || '<nowhere>';
};

sub BUILD {
    my $self = shift;
    say __PACKAGE__, ' BUILD called ', $self;
    $self->dsl->hook(before => sub {
        say YELLOW, __PACKAGE__, ' "before" hook called from ', caller || '<nowhere>', RESET;
    });
}

1;
