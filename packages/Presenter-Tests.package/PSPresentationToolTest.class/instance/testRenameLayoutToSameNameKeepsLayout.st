layout rename tests
testRenameLayoutToSameNameKeepsLayout

	| name layout layoutCountBefore |
	name := 'Same Name Layout'.
	self presentation addLayout: self currentSlide duplicate withName: name.
	layout := self presentation slideLayouts at: name.
	layoutCountBefore := self presentation slideLayouts size.
	self tool layoutController renameLayoutNamed: name to: name.
	self assert: self presentation slideLayouts size equals: layoutCountBefore.
	self assert: (self presentation slideLayouts at: name) equals: layout