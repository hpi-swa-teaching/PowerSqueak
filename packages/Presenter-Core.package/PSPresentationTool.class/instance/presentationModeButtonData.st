toolbuilder buttons
presentationModeButtonData 

	^ Dictionary withAll: {
		#name -> #PresentationModeButton.
		#label -> 'Present'.
		#action -> #enablePresentationMode.
		#frame -> (0.87@0.0 corner: 0.97@1.0)}