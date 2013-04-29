
# alex.mullr.net #

This is my personal site. It uses [Jekyll][jekyll] to translate Markdown into the HTML
that renders [alex.mullr.net][am].

[jekyll]: https://github.com/mojombo/jekyll/
[am]: http://alex.mullr.net/

Includes some `.htaccess` files (for Apache, obviously).

Assets are handled (built and minified) by the `jekyll-assets` gem, required
in `_plugins/ext.rb`.

## Development ##

Run:

    $ jekyll --auto --server

...and the site will be available at `localhost:4000`.

## Deploying ##

To just update existing files and add new ones:

    $ rake rsync:refresh

To delete everything and upload a fresh compiled site:

    $ rake rsync:scratch
