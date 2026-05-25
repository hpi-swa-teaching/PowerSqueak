context menu
moveSectionUpData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Move Section Up'.
		#action -> #moveSectionUp.
		#model -> self}
