receta = angular.module('receta', [
    'templates',
    'ngRoute',
    'ngResource',
    'controllers',
    'angular-flash.service',
    'angular-flash.flash-alert-directive'
])

receta.config([ '$routeProvider', 'flashProvider',
  ($routeProvider, flashProvider)->
    flashProvider.errorClassnames.push("alert-danger")
    flashProvider.errorClassnames.push("alert-warning")
    flashProvider.errorClassnames.push("alert-info")
    flashProvider.errorClassnames.push("alert-success")

    $routeProvider
      .when('/',
        templateUrl: 'index.html'
        controller: 'RecipesController'
      ).when('/recipes/new',
        templateUrl: 'form.html'
        controller: 'RecipeController'
      ).when('/recipes/:recipeId',
        templateUrl: 'show.html'
        controller: 'RecipeController'
      ).when('/recipes/:recipeId/edit',
        templateUrl: 'form.html'
        controller: 'RecipeController'
      )
])

controllers = angular.module('controllers', [])