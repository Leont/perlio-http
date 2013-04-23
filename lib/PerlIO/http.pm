package PerlIO::http;
use strict;
use warnings;

use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

1;

#ABSTRACT: HTTP filehandles

=encoding utf8

=head1 SYNOPSIS

 open my $fh, '<:http', 'https://metacpan.org/recent';

=head1 DESCRIPTION

This layer enables one to read a file from the internet.

=head1 SYNTAX

This module does not have to be loaded explicitly, it will be loaded automatically by using it in an open mode. The layer does not take any argument.

=head1 PHILOSPHY

This modules tried to Do The Right Thing™. HTTP errors are translated as faithfully as possible to an C<$!> value (Error C<404> becomes C<ENOENT>, C<403> becomes C<EACCESS>, et cetera…).

=head1 RATIONALE

This module is mostly meant as a proof of concept. It currently does not support writing in an way, and may never support it.

=head1 SEE ALSO

=over 4

=item * HTTP::Tiny

This module is just a thin but pretty wrapper around HTTP::Tiny.

=item * IO::Callback::HTTP

A pure-perl module that supports read-write handles using ties and a non-open() interface.

=back

=cut
