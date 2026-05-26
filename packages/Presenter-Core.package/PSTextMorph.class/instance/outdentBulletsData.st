bullets
outdentBulletsData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Outdent / remove bullet'.
		#action -> #decreaseBulletIndentOnSelection.
		#help -> 'Decreases the indentation level and removes bullets step by step.'.
		#noButton -> true.
		#model -> self}
