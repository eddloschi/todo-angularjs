#= require angular
#= require angular-mocks
#= require controllers

describe 'TodoCtrl', ->

  describe 'addItem', ->

    beforeEach inject ($rootScope, $controller) ->
      @description = 'Learn BDD'
      @$scope = $rootScope.$new()
      @ctrl = $controller(TodoCtrl, {$scope: @$scope})

    it 'should add an item to the todo list', ->
      @$scope.description = @description
      @$scope.addItem()
      expect(@$scope.items).toContain
        description: @description
        done: false

    it 'should reset the new item description', ->
      @$scope.description = @description
      @$scope.addItem()
      expect(@$scope.description).toBe ''

    it 'should not add an empty item', ->
      @$scope.description = ' '
      @$scope.addItem()
      expect(@$scope.items.length).toBe(0)
