bullet tests
testIncreaseBulletIndentAddsLevel2Bullet

	self selectWholeText.
	self textField increaseBulletIndentOnSelection.
	self
		assert: self textField textMorph text string
		equals: '    - Viva la musica!'
