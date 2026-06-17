editor access
textEdited: someText

	self owner ifNil: [^ self basicTextEdited: someText].
	self owner slideContainer ifNil: [^ self basicTextEdited: someText].
	self owner slideContainer model ifNil: [^ self basicTextEdited: someText].

	self owner slideContainer model doCommand:
		(PSEditTextCommand on: self setText: someText)