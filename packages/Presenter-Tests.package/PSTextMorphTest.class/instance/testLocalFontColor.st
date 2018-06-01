style tests
testLocalFontColor

	| textLength color |
	textLength := self textField textMorph contents size.
	1 to: textLength do: [:begin |
		begin to: textLength do: [:end |
			color := Color random.
			self textField textMorph selectFrom: begin to: end.
			self textField setLocalFontColor: color.
			self assert: self textField getLocalFontColor equals: color
		]
	]