button data
undoButtonData

	^ Dictionary withAll: {
		#name -> #undoButton.
		#label -> 'Undo'.
		#action -> #undo.
		#color -> #undoButtonColor.
		#frame -> (0.42 @ 0.0 corner: 0.52 @ 1.0).
		#help -> 'Undo the last change'}