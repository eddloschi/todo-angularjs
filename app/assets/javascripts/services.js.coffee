angular.module('todoService', ['ngResource']).
  factory 'Item', ($resource) ->
    $resource '/items/:id',
      id: '@_id'
    ,
      update:
        method: 'PUT'
