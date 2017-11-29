AppRouter.config
  yield: '#content-area'
  
AppRouter.define (routes) ->
  routes.get '/', controller: 'home'
  
AppRouter.start()