# Clients for [diacritic as a service](http://diacritic.braincandy.com.ar/)

[DaaS](http://diacritic.braincandy.com.ar/) is a service that provides the diacritics of a given letter.  
That is: send an `a`, receive an `á`.  

## Clients

If you want to contribute with a *client*, please `fork` and create a `pull-request`.  

* Python + [requests](http://docs.python-requests.org/en/latest/) (`client.py`)
* Node.js (`client.js`)
* Ruby (`client.rb`)
* PHP (`client.php`)
* Perl + [REST::Client](http://search.cpan.org/~kkane/REST-Client/) (`client.pl`)
* Golang + [napping](https://github.com/jmcvetta/napping) (`client.go`)
* Emacs-mode + [request.el](http://tkf.github.io/emacs-request/) (`client.el`)

## Usage

All these clients are *examples* of how to interact with the API, but can be used as a `cli` application.  

### Install

#### `client.py`

The only requirement is [requests](http://docs.python-requests.org/en/latest/), so a clean way to install its dependencies it would be:  

    $ virtualenv diacritic; cd diacritic; . bin/activate;
    $ pip install requests

#### `client.rb`

Works out of the box.

#### `client.php`

Works out of the box.

#### `client.pl`

The only requirement is [REST::Client](http://search.cpan.org/~kkane/REST-Client/), so a quick and clean way (on [Debian](https://debian.org/) based distros) to install its dependencies would be:  

    $ dh-make-perl --build --cpan REST::Client
    # dpkg -i librest-client-perl_*.deb

#### `client.go`

The only requirement is [napping](https://github.com/jmcvetta/napping), so a quick and clean way to install its dependencies would be:  

    $ export GOPATH=`pwd`
    $ go get github.com/jmcvetta/napping

#### `client.el`

The only requirement is [request.el](http://tkf.github.io/emacs-request/), so a quick and clean way to install its dependencies would be:  

    $ wget https://raw.githubusercontent.com/tkf/emacs-request/master/request.el -O ~/.emacs.d/request.el
    $ cp client.el ~/.emacs.d/diacritic-mode.el

Restart emacs (or reload your config). Use `C-c C-d` to execute it.  Keep in mind that for this to work, you need to have at least these settings in your `~/.emacs` file:

    (add-to-list 'load-path "~/.emacs.d")
    ('require request)
    ('require diacritic-mode)
