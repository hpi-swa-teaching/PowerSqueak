menu tests
testOpenInsertMenuOpens
	| slidesBefore |
	slidesBefore := self presentation slideCount.
	self tool openInsertMenu.
	self assert: self presentation slideCount equals: slidesBefore
