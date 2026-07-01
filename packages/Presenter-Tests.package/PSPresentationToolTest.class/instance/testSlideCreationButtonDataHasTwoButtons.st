button tests
testSlideCreationButtonDataHasTwoButtons

	| labels |
	labels := self tool buttonData slideCreationButtonData collect: [:each | each at: #label].
	self
		assert: labels asArray
		equals: #('Create slide' 'with Layout')