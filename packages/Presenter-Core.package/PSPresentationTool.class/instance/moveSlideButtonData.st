toolbuilder buttons
moveSlideButtonData

	^ Dictionary withAll: {
		#size -> #bigButtonSize.
		#name -> #moveButton.
		#label -> 'Move'.
		#action -> #openSlideMoveDialog.
		#help -> 'Move this slide to another position'}