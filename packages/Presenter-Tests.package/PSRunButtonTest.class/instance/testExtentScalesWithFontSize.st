run button tests
testExtentScalesWithFontSize

	{10. 20. 30. 50} do: [:size |
		self button fontSize: size.
		self assert: self button extent equals: ((size * 0.75) rounded) @ ((size * 0.75) rounded)]