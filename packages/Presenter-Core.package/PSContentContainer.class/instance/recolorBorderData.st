buttons
recolorBorderData

	 ^ Dictionary withAll: {
			#label -> 'Border'.
			#contextMenuLabel -> 'Recolor the border'.
			#action -> #recolorBorder.
			#size -> #bigButtonSize.
			#name -> #recolorBorderButton.
			#model -> self}