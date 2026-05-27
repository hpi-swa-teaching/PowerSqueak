context menu
moveSectionDownData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Move Section Down'.
		#action -> #moveSectionDown.
		#model -> self}
