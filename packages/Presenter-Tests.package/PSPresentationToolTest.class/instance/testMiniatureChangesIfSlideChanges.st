miniature view tests
testMiniatureChangesIfSlideChanges

	| slide miniature oldMiniatureForm |
	slide := self slides first.
	miniature := (self tool miniatureOf: slide).
	oldMiniatureForm := miniature form.
	
	slide addContent: (Morph new center: slide center).
	self tool step.		"the tool is stepping but we do not want to wait here"
	self assert: oldMiniatureForm ~= miniature form