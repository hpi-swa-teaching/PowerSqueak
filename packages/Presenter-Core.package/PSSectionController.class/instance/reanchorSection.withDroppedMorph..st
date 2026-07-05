section dropping
reanchorSection: aSection withDroppedMorph: aMorph

	| presentation droppedSlide oldIndex anchorIndex targetIndex |
	presentation := self presentation.
	droppedSlide := aMorph slide.
	oldIndex := presentation indexOf: droppedSlide.
	oldIndex = 0 ifTrue: [^ self miniatureController cancelDrag].
	anchorIndex := presentation indexOf: aSection firstSlide.
	oldIndex = anchorIndex ifTrue: [^ self miniatureController cancelDrag].
	targetIndex := oldIndex < anchorIndex
		ifTrue: [anchorIndex - 1]
		ifFalse: [anchorIndex].
	presentation moveSlideAt: oldIndex to: targetIndex.
	presentation setFirstSlideOfSection: aSection to: droppedSlide.
	self miniatureController cancelDrag