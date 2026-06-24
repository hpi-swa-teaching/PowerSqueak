bullet tests
testDecreaseBulletIndentStepsFromLevel2ToLevel1

	self selectWholeText.
	self textField increaseBulletIndentOnSelection.
	self selectWholeText.
	self textField decreaseBulletIndentOnSelection.
	self
		assert: self textField textMorph text string
		equals: '- Viva la musica!'
