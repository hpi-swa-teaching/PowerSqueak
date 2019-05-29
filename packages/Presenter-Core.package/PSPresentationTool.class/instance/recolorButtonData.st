toolbuilder buttons
recolorButtonData

	^ Dictionary withAll: {
		#size -> #bigButtonSize.
		#name -> #recolorButton.
		#label -> 'Recolor'.
		#action -> #openRecolorDialog.
		#help -> 'Change the color of the selected morph'}