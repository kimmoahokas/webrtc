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
          sassDir: 'src/public/stylesheets'
          cssDir: 'build/public/stylesheets'

    copy:
      build:
        expand: true
        cwd: 'src'
        src: ['public/images/**', 'public/js/**', 'public/fonts/**', 'views/**/*.handlebars']
        dest: 'build'

    coffeelint:
      app:
        files:
          src: ['src/**/*.coffee']
      options:
        max_line_length:
          value: 120

    scsslint:
      allFiles : ['src/public/stylesheets/**/application.scss']

    express:
      custom:
        options:
          port: 3000
          hostname: '*'
          server: 'build/app.js'

    watch:
      stylesheets:
        files: 'src/public/stylesheets/**'
        tasks: ['compass', 'express']
      scripts:
        files: 'src/**/*.coffee'
        tasks: ['coffee', 'express']
      copy:
        files: ['src/public/images/**', 'src/views/**/*.handlebars']
        tasks: ['copy', 'express']

    # TODO:
    # implement file change watching
    # minify js + css and compile handlebars templates for production use

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks('grunt-express')
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-scss-lint'

  grunt.registerTask(
    'build',
    'Build the project into runnable form.',
    ['clean', 'coffee', 'compass', 'copy'])

  grunt.registerTask(
    'lint',
    'Run different linters fo the source code.'
    ['coffeelint', 'scsslint'])

  grunt.registerTask(
    'run',
    'Build the app and run development server',
    ['build', 'express', 'watch'])

  grunt.registerTask 'default', ['run']
