button data
redoButtonData

	^ Dictionary withAll: {
		#name -> #redoButton.
		#label -> 'Redo'.
		#action -> #redo.
		#color -> #redoButtonColor.
		#frame -> (0.52 @ 0.0 corner: 0.62 @ 1.0).
		#help -> 'Redo the last undone change'}