button tests
testSlideCreationButtonDataHasTwoButtons

	| labels |
	labels := self tool slideCreationButtonData collect: [:each | each at: #label].
	self
		assert: labels asArray
		equals: #('Create slide' 'with Layout')
