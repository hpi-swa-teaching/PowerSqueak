bullet tests
testToggleBulletsAddsLevel1Bullet

	self selectWholeText.
	self textField toggleBulletsOnSelection.
	self
		assert: self textField textMorph text string
		equals: '- Viva la musica!'
