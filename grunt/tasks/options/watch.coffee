module.exports =
  options:
    livereload: '<%= in8.liveport %>'
    spawn: false

  sass:
    files:'<%= in8.cssSrc %>/**/*.scss'
    tasks: [
      'sass:dev'
      'autoprefixer'
      # 'rename'
      'clean:css'
      'scsslint'
    ]

  coffee:
    files: '<%= in8.jsSrc %>/**/*.coffee'
    tasks: [
      'coffeeify:dev'
      'coffeelint'
    ]
