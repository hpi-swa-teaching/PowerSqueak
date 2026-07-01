tests boarder
testDefaultActionsIncludeBorderActions

	| actionSymbols |
	actionSymbols := self aContainerOnSlide defaultActions collect: [:each | each at: #action].
	self assert: (actionSymbols includes: #recolorBorder).
	self assert: (actionSymbols includes: #changeBorderWidth)