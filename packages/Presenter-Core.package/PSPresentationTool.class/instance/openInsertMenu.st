menu bar
openInsertMenu

	self openMenuWith: {
		{'Text field' . #newTextField}.
		{'Code field'. #newCodeField}.
		{'Image' . #newImageField}.
		{'Shape' . #openShapeChooser}.
		{'Slide Number' . #insertSlideNumber}.
		{'Slide Numbers' . #insertSlideNumbers}
	}