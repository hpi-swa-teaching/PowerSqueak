menu tests
testOpenSlideMenuOpens
	| slidesBefore |
	slidesBefore := self presentation slideCount.
	self tool openSlideMenu.
	self assert: self presentation slideCount equals: slidesBefore
