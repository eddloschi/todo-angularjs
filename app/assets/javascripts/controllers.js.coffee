angular.module 'todo', ['todoService']

@TodoCtrl = ($scope, Item) ->
  $scope.items = Item.query()

  $scope.addItem = ->
    description = $scope.description.trim()
    if description isnt ''
      item =
        description: description
        done: false
      Item.save
        item: item
      ,
      (response) ->
        $scope.items.push response
      ,
      (error) ->
        console.log error
      $scope.description = ''

  $scope.updateItem = (item) ->
    item.$update (response) ->
      item.description = response.description
      item.done = response.done
    ,
    (error) ->
      console.log error

  $scope.clearDone = ->
    $scope.items = _.filter $scope.items, (item, index, items) ->
      item.$delete() if item.done
      !item.done
    return

  return
