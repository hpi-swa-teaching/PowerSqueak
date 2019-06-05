toolbuilder buttons
presentationModeButtonData 

	^ Dictionary withAll: {
		#name -> #PresentationModeButton.
		#label -> 'Present'.
		#action -> #enablePresentationMode.
		#frame -> (0.9@0.0 corner: 1.0@1.0)}