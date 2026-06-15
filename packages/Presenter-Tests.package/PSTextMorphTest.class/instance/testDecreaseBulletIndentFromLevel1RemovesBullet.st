bullet tests
testDecreaseBulletIndentFromLevel1RemovesBullet

	self selectWholeText.
	self textField toggleBulletsOnSelection.
	self selectWholeText.
	self textField decreaseBulletIndentOnSelection.
	self
		assert: self textField textMorph text string
		equals: 'Viva la musica!'
