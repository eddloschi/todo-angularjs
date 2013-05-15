TodoAngularjs::Application.routes.draw do
  root to: 'home#index'

  mount JasmineRails::Engine => "/jasmine" if defined?(JasmineRails)
end
