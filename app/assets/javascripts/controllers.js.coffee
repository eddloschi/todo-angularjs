@TodoCtrl = ($scope) ->
  $scope.items = []

  $scope.addItem = ->
    description = $scope.description.trim()
    if description isnt ''
      $scope.items.push
        description: description
        done: false
      $scope.description = ''
    return

  return
