buttons
grabChildData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Grab child'.
			#action -> #grabChild.
			#model -> self}