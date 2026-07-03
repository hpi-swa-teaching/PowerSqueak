extra coverage tests
testContentContainerApplyUserInterfaceTheme
	| container |
	container := self tool contentCreationController newTextField.
	container applyUserInterfaceTheme.
	self assert: (self currentSlide submorphs includes: container)
