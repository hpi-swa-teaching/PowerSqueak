bullets
toggleBulletsData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Toggle bullet list (-)'.
		#action -> #toggleBulletsOnSelection.
		#help -> 'Turns the selected lines into a bullet list or removes the bullets again.'.
		#noButton -> true.
		#model -> self}
