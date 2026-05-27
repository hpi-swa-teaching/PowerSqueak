bullets
indentBulletsData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Indent bullet level (-)'.
		#action -> #increaseBulletIndentOnSelection.
		#help -> 'Increases the indentation level of the selected bullet items.'.
		#noButton -> true.
		#model -> self}