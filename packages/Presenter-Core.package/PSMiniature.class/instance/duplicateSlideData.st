context menu
duplicateSlideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Duplicate Slide'.
			#action -> #duplicateSlide.
			#model -> self}