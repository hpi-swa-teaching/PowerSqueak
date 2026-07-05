miniature view tests
testMiniatureChangesIfSlideChanges

	| slide miniature oldMiniatureForm |
	slide := self slides first.
	miniature := (self tool miniatureController miniatureOf: slide).
	oldMiniatureForm := miniature form.
	
	slide addContent: (Morph new center: slide center).
	self tool step.		"step directly instead of waiting for the stepping tool"
	self deny: oldMiniatureForm = miniature form