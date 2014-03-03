# T-110.5130 Mobile Systems Programming, WebRTC #

## Getting started ##

This section explains how to get the development environment up and running. It is mainly targeted for unix paltforms, such as OS X and Linux. If you are using Windows, you have to figure out the steps yourself. Additionally install VirtualBox and run Ubuntu 13.10 in it (Easier than doing this in Windows).

Before starting you need to have [git][git] version control system installed. Then make sure you can access the project at https://git.niksula.hut.fi/kahokas/webrtc and you have ssh public key properly set up.

1. Install [Node.js][nodejs] from [http://nodejs.org/][nodejs] or using your operation system's package manager.
2. Install [Ruby][ruby] if you don't have it (test with `ruby -v`).
3. Install RVM: `\curl -sSL https://get.rvm.io | bash -s stable`
3. Clone the project: `git clone git@git.niksula.hut.fi:kahokas/webrtc.git`
4. Change to project directory: `cd webrtc`
5. Install [Grunt][grunt]: `npm install -g grunt-cli`
6. Install project dependencies: `npm install`
7. Start development server: `grunt server`

TODO: compass?

RVM:
\curl -sSL https://get.rvm.io | bash -s stable --ruby



## Running in production environment ##

TODO!

## Other helpfull commands ##

* Run the tests: `grunt test`
* Run syntax checks: `grunt syntax`

## Credits ##

1. Landon Schropp, Writing an Awesome Build Script with Grunt, http://www.sitepoint.com/writing-awesome-build-script-grunt/


[git]: http://git-scm.com/
[nodejs]: http://nodejs.org/
[ruby]: https://www.ruby-lang.org/en/
[grunt]: http://gruntjs.com/getting-started
