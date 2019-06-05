menu bar
openInsertMenu

	self openMenuWith: {
		{'Text field' . #newTextField}.
		{'Image' . #newImageField}.
		{'Shape' . #openShapeChooser}.
		{'Slide Number' . #insertSlideNumber}
	}