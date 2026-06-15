bullet tests
testRemoveBulletsClearsBulletPrefix

	self selectWholeText.
	self textField toggleBulletsOnSelection.
	self selectWholeText.
	self textField removeBulletsOnSelection.
	self
		assert: self textField textMorph text string
		equals: 'Viva la musica!'
