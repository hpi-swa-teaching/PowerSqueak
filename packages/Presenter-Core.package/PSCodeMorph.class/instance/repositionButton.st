run button
repositionButton

	self runButton ifNil: [^ self].
	self runButton position: (self right - self runButton width - 6) @ (self top + 6).		"arbitrary UI offset"