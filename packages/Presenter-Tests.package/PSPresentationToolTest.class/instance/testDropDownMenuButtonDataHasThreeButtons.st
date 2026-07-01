button tests
testDropDownMenuButtonDataHasThreeButtons

	| labels |
	labels := self tool buttonData dropDownMenuButtonData collect: [:each | each at: #label].
	self
		assert: labels asArray
		equals: #('File' 'Insert' 'Slide')