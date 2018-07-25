toolbuilder buttons
presentationModeButtonData 

	^ Dictionary withAll: {
		#frame -> (0.9@0.0 corner: 1.0@1.0).
		#name -> #PresentationModeButton.
		#label -> 'Present'.
		#action -> #enablePresentationMode}