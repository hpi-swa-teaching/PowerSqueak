styling
selectionColor

	^ (self selectionAttribute: TextColor)
		ifNil: [Color black]
		ifNotNil: [:colorAttribute | colorAttribute color]

