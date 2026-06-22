dropping/grabbing
acceptMovedContentMorph: aMorph

	| beforeLocation container targetFrame |
	beforeLocation := aMorph valueOfProperty: #undoStartLocation ifAbsent: [nil].
	container := aMorph
		valueOfProperty: #undoContentContainer
		ifAbsent: [PSContentContainer for: aMorph].
	self clearMoveUndoPropertiesFrom: aMorph.
	targetFrame := self layoutFrameForContainerHolding: aMorph.
	container ensureContentIsSubmorph.
	self restoreContentContainer: container withLayoutFrame: targetFrame.
	self recordMoveOf: container from: beforeLocation.
	^ container