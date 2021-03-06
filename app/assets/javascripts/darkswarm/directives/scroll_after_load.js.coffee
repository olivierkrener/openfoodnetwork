Darkswarm.directive 'scrollAfterLoad', ($timeout, $location, $document)->
  # Scroll to an element on page load
  restrict: "A"
  link: (scope, element, attr) ->
    if scope.$last is true
      $(window).load ->
        $timeout ->
          elem = $("##{$location.hash()}")
          if elem.length > 0
            $document.scrollTo elem , 100, 200, (x)->
              x * (2 - x)
