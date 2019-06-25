context menu
duplicateCurrentSlideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Duplicate Slide'.
			#action -> #duplicateCurrentSlide.
			#model -> self}