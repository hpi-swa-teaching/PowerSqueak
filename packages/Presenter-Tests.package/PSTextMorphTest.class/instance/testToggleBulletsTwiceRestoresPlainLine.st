bullet tests
testToggleBulletsTwiceRestoresPlainLine

	self selectWholeText.
	self textField toggleBulletsOnSelection.
	self selectWholeText.
	self textField toggleBulletsOnSelection.
	self
		assert: self textField textMorph text string
		equals: 'Viva la musica!'
