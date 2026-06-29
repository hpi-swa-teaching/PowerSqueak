menu tests
testOpenPresentationModeOptionsMenuOpens
	| slidesBefore |
	slidesBefore := self presentation slideCount.
	self tool openPresentationModeOptionsMenu.
	self assert: self presentation slideCount equals: slidesBefore
