slide miniatures
cancelDrag

	self draggedSlide ifNil: [^ self].
	self draggedSlide: nil.
	self updateSlideMiniatures
