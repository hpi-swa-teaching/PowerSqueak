toolbuilder buttons
presentationModeButtonData 

	^ Dictionary withAll: {
		#size -> self class bigButtonSize.
		#name -> #PresentationModeButton.
		#label -> 'Present'.
		#action -> #enablePresentationMode}