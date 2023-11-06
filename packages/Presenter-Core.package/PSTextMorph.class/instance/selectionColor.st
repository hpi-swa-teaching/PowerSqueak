styling
selectionColor

	^ (self selectionAttribute: TextColor)
		ifNil: [(UserInterfaceTheme current get: #textColor for: self class) ifNil: [Color black]]
		ifNotNil: [:colorAttribute | colorAttribute color]

