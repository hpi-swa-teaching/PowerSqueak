predicate tests
testSlideContainerSystemWindowStubs
	self deny: self slideContainer isCollapsed.
	self deny: self slideContainer isActive.
	self assert: self slideContainer logoHeight equals: 120.
	self assert: self slideContainer logoMargin equals: (24 @ 24).
	self assert: self slideContainer collapsedFrame equals: self slideContainer bounds
