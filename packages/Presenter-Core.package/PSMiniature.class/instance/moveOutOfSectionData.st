context menu
moveOutOfSectionData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Move out of section'.
		#action -> #moveOutOfSection.
		#model -> self}
