extra coverage tests
testContentLocationCaptureRemoveRestore
	| container location |
	container := self tool newTextField.
	location := PSContentLocation new.
	location capture: container.
	self assert: location slide equals: container slide.
	location removeContainer: container.
	self deny: (self currentSlide submorphs includes: container).
	location restoreContainer: container.
	self assert: (self currentSlide submorphs includes: container)
