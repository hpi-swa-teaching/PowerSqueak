toolbuilder buttons
snapOptionsButtonData

	^ Dictionary withAll: {
		#name -> #snapOptionsButton.
		#label -> 'v'.
		#action -> #openSnapOptionsMenu.
		#color -> #snapButtonColor.
		#frame ->  (0.85@0.0 corner: 0.88@1.0).
		#help -> 'Toggle grid snapping'}