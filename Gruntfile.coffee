module.exports = (grunt) ->
    grunt.initConfig
        clean:
            build:
                src: ['build']

        coffee:
            build:
                expand: true
                cwd: 'src'
                src: ['**/*.coffee']
                dest: 'build'
                ext: '.js'

        compass:
            dev:
                options:
                    sassDir: 'src/client/styles'
                    cssDir: 'build/client/styles'

        copy:
            build:
                expand: true
                cwd: 'src'
                src: ['client/images/**']
                dest: 'build'

        uglify:
            build:
                options:
                    mangle: false
                files:
                    'build/client.js'; ['build/client/**/*.js']
                    'build/server.js'; ['build/server/**/*.js']

        cssmin:
            build:
                files:
                    'build/client/styles/app.css': ['build/client/styles/**/*.css']

        # express:
        #     server:
        #         options:
        #             port: 3000
        #             bases: 'build/client'

        # watch:
        #     stylesheets:
        #         files: 'src/client/styles/**'
        #         tasks: ['compass']
        #     scripts:
        #         files: 'src/**/*.coffee'
        #         tasks: ['coffee']
        #     copy:
        #         files: 'src/client/images/**'
        #         takss: ['copy']

        # tasks to add
        # server
        # watch
        # coffeelint etc
        # tests

    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-compass'
    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-contrib-cssmin'
    #grunt.loadNpmTasks 'grunt-contrib-watch'
    #grunt.loadNpmTasks('grunt-express');

    grunt.registerTask(
        'build',
        'Build the project into runnable form.',
        ['clean', 'coffee', 'compass', 'copy'])

    grunt.registerTask(
        'distribute'
        'Make distribution ready build, ie. mimimize css and JS.',
        ['build', 'cssmin', 'uglify'])

    #grunt.registerTask 'default', ['build', 'express', 'express-keepalive']
