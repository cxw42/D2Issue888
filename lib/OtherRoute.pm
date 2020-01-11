package OtherRoute;
use Dancer2 appname => 'D2Issue888';

use SamplePlugin;       # XXX

get '/other' => sub {
    sample_keyword;     # XXX
    return 'Other!';
}
