toolbuilder buttons
snapButtonData

	^ Dictionary withAll: {
		#name -> #snapButton.
		#label -> 'Snap'.
		#action -> #toggleSnap.
		#color -> #snapButtonColor.
		#frame ->  (0.72@0.0 corner: 0.82@1.0).
		#help -> 'Toggle grid snapping'}