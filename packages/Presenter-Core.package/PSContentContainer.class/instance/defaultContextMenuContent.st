accessing
defaultContextMenuContent

	^ #(
		('delete' abandon)
		-
		('bring to front' comeToFront)
		('send to back' goBehind)
	)