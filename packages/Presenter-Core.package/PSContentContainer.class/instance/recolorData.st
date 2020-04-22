buttons
recolorData

	 ^ Dictionary withAll: {
			#label -> 'Recolor'.
			#contextMenuLabel -> 'Recolor this morph'.
			#action -> #recolor.
			#size -> #bigButtonSize.
			#name -> #RecolorButton.
			#model -> self}