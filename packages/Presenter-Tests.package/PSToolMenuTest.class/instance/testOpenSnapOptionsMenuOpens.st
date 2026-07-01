menu tests
testOpenSnapOptionsMenuOpens
	| slidesBefore |
	slidesBefore := self presentation slideCount.
	self tool openSnapOptionsMenu.
	self assert: self presentation slideCount equals: slidesBefore
