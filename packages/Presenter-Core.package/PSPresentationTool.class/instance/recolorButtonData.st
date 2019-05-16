toolbuilder buttons
recolorButtonData

	^ Dictionary withAll: {
		#size -> self class bigButtonSize.
		#name -> #recolorButton.
		#label -> 'Recolor'.
		#action -> #openRecolorDialog.
		#help -> 'Change the color of the selected morph'}