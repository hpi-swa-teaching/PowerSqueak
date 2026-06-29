extra coverage tests
testContentContainerApplyUserInterfaceTheme
	| container |
	container := self tool newTextField.
	container applyUserInterfaceTheme.
	self assert: (self currentSlide submorphs includes: container)
