context menu
deleteSlideData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Delete'.
			#action -> #deleteSlide.
			#model -> self}