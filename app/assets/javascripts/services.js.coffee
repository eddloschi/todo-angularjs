angular.module('todoService', ['ngResource']).
  factory 'Item', ($resource) ->
    $resource '/items', {},
      update:
        method: 'PUT'
