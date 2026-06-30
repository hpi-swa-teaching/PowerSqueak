tests boarder
testBorderColorButtonSitsNextToRecolor

	| actionSymbols |
	actionSymbols := self aContainerOnSlide defaultActions collect: [:each | each at: #action].
	self
		assert: (actionSymbols indexOf: #recolorBorder)
		equals: (actionSymbols indexOf: #recolor) + 1