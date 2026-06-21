syntax highlighting tests
testInstallSyntaxHighlightingAddsAttributes

	self codeMorph textMorph contents: 'self size'.
	self codeMorph installSyntaxHighlighting.
	self assert: (self codeMorph textMorph text attributesAt: 1) notEmpty
