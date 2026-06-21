syntax highlighting tests
testInstallSyntaxHighlightingKeepsString

	self codeMorph textMorph contents: 'self size'.
	self codeMorph installSyntaxHighlighting.
	self
		assert: self codeMorph textMorph text string
		equals: 'self size'
