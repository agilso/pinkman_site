App.controller 'home', ->
  
  @main =->
    App.render
      template: 'home-template'
      target: 'home'