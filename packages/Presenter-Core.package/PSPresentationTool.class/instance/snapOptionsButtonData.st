toolbuilder buttons
snapOptionsButtonData

	^ Dictionary withAll: {
		#name -> #snapOptionsButton.
		#label -> 'v'.
		#action -> #openSnapOptionsMenu.
		#color -> #snapButtonColor.
		#frame ->  (0.82@0.0 corner: 0.85@1.0).
		#help -> 'More grid snapping options'}