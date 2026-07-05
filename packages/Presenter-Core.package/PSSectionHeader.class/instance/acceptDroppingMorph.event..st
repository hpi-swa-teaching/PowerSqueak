dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	| presentation droppedSlide oldIndex anchorIndex targetIndex |
	presentation := self tool presentation.
	droppedSlide := aMorph slide.
	oldIndex := presentation indexOf: droppedSlide.
	oldIndex = 0 ifTrue: [^ self tool miniatureController cancelDrag].
	anchorIndex := presentation indexOf: self section firstSlide.
	oldIndex = anchorIndex ifTrue: [^ self tool miniatureController cancelDrag].
	targetIndex := oldIndex < anchorIndex
		ifTrue: [anchorIndex - 1]
		ifFalse: [anchorIndex].
	presentation moveSlideAt: oldIndex to: targetIndex.
	presentation setFirstSlideOfSection: self section to: droppedSlide.
	self tool miniatureController cancelDrag