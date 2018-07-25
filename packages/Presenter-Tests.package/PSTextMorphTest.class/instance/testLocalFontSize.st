style tests
testLocalFontSize

	| textLength size |
	textLength := self textField textMorph contents size.
	1 to: textLength do: [:begin |
		begin to: textLength do: [:end |
			size := 200 atRandom.
			self textField textMorph selectFrom: begin to: end.
			self textField selectionFontSize: size.
			self textField textMorph selectFrom: begin to: end.
			self assert: self textField selectionFontSize equals: size]]