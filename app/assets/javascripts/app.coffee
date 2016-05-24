taskApp = angular.module('taskApp',[
  'ui.router'
  'templates'
]).config([
  '$stateProvider'
  '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state('home',
        url: '/home'
        templateUrl: 'home.html'
        controller: 'HomeCtrl')
      .state('projects',
        url: '/projects',
        templateUrl: 'projects.html'
        controller: 'ProjectsCtrl')

    $urlRouterProvider.otherwise 'home'
])