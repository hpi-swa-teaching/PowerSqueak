layout
acceptDroppingMorph: aMorph event: anEvent

	| presentation oldIndex destination |
	presentation := self model presentation.
	oldIndex := presentation indexOf: aMorph slide.
	(oldIndex = 0 or: [aMorph slide == self slide])
		ifTrue: [^ self model cancelDrag].
	destination := anEvent position y < self center y
		ifTrue: [self slide slideNumber]
		ifFalse: [self slide slideNumber + 1].
	oldIndex < destination ifTrue: [destination := destination - 1].
	presentation moveSlideAt: oldIndex to: destination.
	self model cancelDrag
