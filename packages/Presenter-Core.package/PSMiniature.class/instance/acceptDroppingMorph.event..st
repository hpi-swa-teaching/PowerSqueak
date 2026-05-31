layout
acceptDroppingMorph: aMorph event: anEvent

	| presentation oldIndex destination |
	presentation := self model presentation.
	oldIndex := presentation indexOf: aMorph slide.
	aMorph slide == self slide ifTrue: [^ self model cancelDrag].
	destination := anEvent position y < self center y
		ifTrue: [self slide slideNumber]
		ifFalse: [self slide slideNumber + 1].
	oldIndex = 0 ifTrue: [
		presentation addSlide: aMorph slide afterIndex: destination - 1.
		aMorph model: self model.
		^ self model cancelDrag].
	oldIndex < destination ifTrue: [destination := destination - 1].
	presentation
		moveSlideAt: oldIndex
		to: destination.
	self model cancelDrag