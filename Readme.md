# T-110.5130 Mobile Systems Programming, WebRTC #

## Getting started ##

This section explains how to get the development environment up and running. It
is mainly targeted for unix paltforms, such as OS X and Linux. If you are using
Windows, you have to figure out the steps yourself. Additionally install
VirtualBox and run Ubuntu 13.10 in it (Easier than doing this in Windows).

Before starting you need to have [git][git] version control system installed. (In ubuntu run `sudo apt-get install git`)
Then make sure you can access the project at
https://github.com/mr-kimia/webrtc and you have ssh public key properly
set up.

1. Install [Node.js][nodejs] from [http://nodejs.org/][nodejs] or using your
    operation system's package manager. Also install npm if you installed old version of Node.

    In Ubuntu you can do the following:

        sudo apt-get update
        sudo apt-get install -y python-software-properties python g++ make
        sudo add-apt-repository ppa:chris-lea/node.js
        sudo apt-get update
        sudo apt-get install nodejs

2. Install [Ruby][ruby] if you don't have it (test with `ruby -v`).

    In Ubuntu you can install it with `sudo apt-get install ruby`

3. Install [RVM][rvm]: `\curl -sSL https://get.rvm.io | bash -s stable`
4. Clone the project: `git clone git@github.com:mr-kimia/webrtc.git`
5. Change to project directory: `cd webrtc`
6. Install [Grunt][grunt]. You might need to do this as root (sudo):
    `npm install -g grunt-cli`
7. Install node dependencies: `npm install`
8. Install ruby dependencies:

        rvm install ruby-2.1.1
        rvm --create 2.1.1@webrtc
        rvm use 2.1.1@webrtc
        rvm gemset import webrtc

9. Start development server: `grunt run`
10. Open up browser and go to http://localhost:3000

## Other helpfull commands ##

* Build CoffeeScript to JS and SASS to CSS: `grunt build`
* Remove generated files: `grunt clean`
* Run syntax checks/linters: `grunt lint`
* Run the development server: `grunt run`

## Directory structure ##

* `src` contains all the source files.
    - `public` contains all the files which are sent to client.
        + `images` All the image files.
        + `scripts` Coffeescript files that will be compiled to JS and sent to client.
        + `sylesheets` Compass style files that will be compiled to CSS.
    - `routes` Coffeescript files that build context for each handlebars template.
    - `views` Handlebars template files.
* `build` The runnable application. Excluded from git. The folder structure under this tree is similar to the `src` dir tree.

## Credits ##

1. Landon Schropp, Writing an Awesome Build Script with Grunt,
    http://www.sitepoint.com/writing-awesome-build-script-grunt/


[git]: http://git-scm.com/
[nodejs]: http://nodejs.org/
[ruby]: https://www.ruby-lang.org/en/
[grunt]: http://gruntjs.com/getting-started
[rvm]: https://rvm.io/rvm
