@TodoCtrl = ($scope) ->
  $scope.items = []

  $scope.addItem = ->
    $scope.items.push
      description: $scope.description
      done: false
    $scope.description = ''
    return

  return
