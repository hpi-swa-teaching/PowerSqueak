menu tests
testOpenFileMenuOpens
	| slidesBefore |
	slidesBefore := self presentation slideCount.
	self tool openFileMenu.
	self assert: self presentation slideCount equals: slidesBefore
