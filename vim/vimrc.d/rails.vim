" Set up some useful Rails.vim bindings for working with Backbone.js
autocmd User Rails Rnavcommand template    app/assets/templates               -glob=**/*  -suffix=.mustache
autocmd User Rails Rnavcommand jmodel      app/assets/javascripts/models      -glob=**/*  -suffix=.js.coffee
autocmd User Rails Rnavcommand jview       app/assets/javascripts/views       -glob=**/*  -suffix=.js.coffee
autocmd User Rails Rnavcommand jcollection app/assets/javascripts/collections -glob=**/*  -suffix=.js.coffee
autocmd User Rails Rnavcommand jrouter     app/assets/javascripts/routers     -glob=**/*  -suffix=.js.coffee
autocmd User Rails Rnavcommand jspec       spec/javascripts                   -glob=**/*  -suffix=.js.coffee

" Set up additional Rails.vim bindings
autocmd User Rails Rnavcommand concern    app/concerns               -glob=**/*  -suffix=.rb
autocmd User Rails Rnavcommand decorator  app/decorators             -glob=**/*  -suffix=_decorator.rb
autocmd User Rails Rnavcommand validator  app/validators             -glob=**/*  -suffix=_validator.rb
