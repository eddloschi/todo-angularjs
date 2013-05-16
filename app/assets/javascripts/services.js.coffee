angular.module('todoService', ['ngResource']).
  factory 'Item', ($resource) ->
    $resource '/items'
