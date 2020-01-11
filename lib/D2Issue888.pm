package D2Issue888;
use Dancer2;

use SamplePlugin;       # XXX

use OtherRoute;

our $VERSION = '0.1';

get '/' => sub {
    sample_keyword;     # XXX
    template 'index' => { 'title' => 'D2Issue888' };
};

true;
