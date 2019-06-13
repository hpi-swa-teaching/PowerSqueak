toolbuilder buttons
presentationModeOptionsButtonData

	^ Dictionary withAll: {
		#name -> #presentationModeOptions.
		#label -> 'v'.
		#action -> #openPresentationModeOptionsMenu.
		#frame ->  (0.97@0.0 corner: 1.0@1.0).
		#help -> 'More Present options'}