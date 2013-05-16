#= require angular
#= require angular-resource
#= require angular-mocks
#= require controllers
#= require services

describe 'TodoCtrl', ->

  beforeEach module 'todoService'

  describe 'addItem', ->

    beforeEach inject (_$httpBackend_, $rootScope, $controller) ->
      @description = 'Learn BDD'
      @$httpBackend = _$httpBackend_
      @$httpBackend.expectGET('/items').
        respond [
          description: 'Learn Scrum'
          done: false
        ,
          description: 'Learn Ruby'
          done: true
        ]
      @$httpBackend.expectPOST('/items').
        respond
          description: @description
          done: false
      @$scope = $rootScope.$new()
      @ctrl = $controller(TodoCtrl, {$scope: @$scope})

    it 'should add an item to the todo list', ->
      @$scope.description = @description
      @$scope.addItem()
      @$httpBackend.flush()
      item = @$scope.items.pop()
      expect(item.description).toBe @description

    it 'should reset the new item description', ->
      @$scope.description = @description
      @$scope.addItem()
      expect(@$scope.description).toBe ''

    it 'should not add an empty item', ->
      @$scope.description = ' '
      @$scope.addItem()
      expect(@$scope.items.length).toBe(0)
