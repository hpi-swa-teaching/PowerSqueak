toolbuilder buttons
presentationModeButtonData 

	^ Dictionary withAll: {
		#size -> #bigButtonSize.
		#name -> #PresentationModeButton.
		#label -> 'Present'.
		#action -> #enablePresentationMode}