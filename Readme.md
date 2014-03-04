# T-110.5130 Mobile Systems Programming, WebRTC #

## Getting started ##

This section explains how to get the development environment up and running. It is mainly targeted for unix paltforms, such as OS X and Linux. If you are using Windows, you have to figure out the steps yourself. Additionally install VirtualBox and run Ubuntu 13.10 in it (Easier than doing this in Windows).

Before starting you need to have [git][git] version control system installed. Then make sure you can access the project at https://git.niksula.hut.fi/kahokas/webrtc and you have ssh public key properly set up.

1. Install [Node.js][nodejs] from [http://nodejs.org/][nodejs] or using your operation system's package manager.
2. Install [Ruby][ruby] if you don't have it (test with `ruby -v`).
3. Install RVM: `\curl -sSL https://get.rvm.io | bash -s stable`
4. Clone the project: `git clone git@git.niksula.hut.fi:kahokas/webrtc.git`
5. Change to project directory: `cd webrtc`
6. Install [Grunt][grunt]. You might need to do this as root (sudo): `npm install -g grunt-cli`
7. Install node dependencies: `npm install`
8. Install ruby dependencies:

        rvm install ruby-2.1.1
        rvm --create ruby-2.1.1@webrtc
        rvm gemset import webrtc

9. Start development server: `grunt server`

TODO: compass?


## Running in production environment ##

TODO!

## Other helpfull commands ##

* Remove generated files: `grunt clean`
* Run the tests: `grunt test`
* Run syntax checks: `grunt syntax`

## Directory structure ##

* `src` contains all the source files.
    - `client` contains all the files which are sent to client.
        + `images` All the image files.
        + `scripts` Coffeescript files that will be compiled to JS and sent to client.
        + `syles` Compass style files that will be compiled to CSS.
        + `templates` the html templates.
    - `server` All files related to the server.
* `build` The runnable application. Excluded from git.

## Credits ##

1. Landon Schropp, Writing an Awesome Build Script with Grunt, http://www.sitepoint.com/writing-awesome-build-script-grunt/


[git]: http://git-scm.com/
[nodejs]: http://nodejs.org/
[ruby]: https://www.ruby-lang.org/en/
[grunt]: http://gruntjs.com/getting-started
