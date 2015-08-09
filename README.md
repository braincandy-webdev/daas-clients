# Clients for [diacritic as a service](http://diacritic.braincandy.com.ar/)

[DaaS](http://diacritic.braincandy.com.ar/) is a service that provides the diacritics of a given letter.  
That is: send an `a`, receive an `á`.  

## Clients

If you want to contribute with a *client*, please `fork` and create a `pull-request`.  

* Python + [requests](http://docs.python-requests.org/en/latest/) (`client.py`)
* Node.js (`client.js`)
* Ruby (`client.rb`)
* PHP (`client.php`)
* Golang + [napping](https://github.com/jmcvetta/napping) (`client.go`)
* Emacs-mode (`client.el`)

## Usage

All these clients are *examples* of how to interact with the API, but can be used as a `cli` application.  
Except for the emacs-mode (`diacritic-mode`) which in order to be used must be installed in your `~/.emacs.d/` directory and then add the line `('require diacritic-mode')` to your `~/.emacs` file.
