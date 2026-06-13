layout menu tests
testHoverShowsAndHidesPreview

	| menu item |
	menu := self tool openLayoutMenu.
	item := menu submorphs detect: [:each | each isKindOf: PSLayoutMenuItem].
	self deny: item hasPreview.
	item mouseEnter: nil.
	self assert: item hasPreview.
	item mouseLeave: nil.
	self deny: item hasPreview.
	menu delete
