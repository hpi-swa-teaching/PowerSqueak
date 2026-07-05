code morph tests
testApplyUserInterfaceThemeReinstallsSyntaxHighlighting

	self codeMorph setText: 'self ifTrue: [1 + 2]' asText.
	self
		deny: (self codeMorph text runs values
			anySatisfy: [:attrs | attrs anySatisfy: [:a | a isKindOf: TextColor]]).
    
	self codeMorph applyUserInterfaceTheme.

	self
		assert: (self codeMorph text runs values
			anySatisfy: [:attrs | attrs anySatisfy: [:a | a isKindOf: TextColor]])	.
