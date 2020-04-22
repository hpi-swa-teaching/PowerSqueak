context menu
deleteSlideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Delete Slide'.
			#action -> #deleteSlide.
			#model -> self}