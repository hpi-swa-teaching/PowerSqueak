bullet tests
testToggleBulletsBulletsEverySelectedLine

	| separator |
	separator := String with: Character cr.
	self textField textMorph contents: 'alpha', separator, 'beta', separator, 'gamma'.
	self selectWholeText.
	self textField toggleBulletsOnSelection.
	self
		assert: self textField textMorph text string
		equals: '- alpha', separator, '- beta', separator, '- gamma'
