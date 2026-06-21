layout menu tests
testOpenLayoutMenuContainsAllLayouts

	| menu items |
	menu := self tool openLayoutMenu.
	items := menu submorphs select: [:each | each isKindOf: PSLayoutMenuItem].
	self
		assert: items size equals: self presentation slideLayouts size;
		assert: (items allSatisfy: [:each | each layout notNil and: [each icon notNil]]).
	menu delete

