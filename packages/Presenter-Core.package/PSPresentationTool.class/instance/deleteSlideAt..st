slide management
deleteSlideAt: anIndex

	| command |
	command := PSDeleteSlideCommand
		on: self
		deleteAt: anIndex.
	self doCommand: command.
	^ command deletedSlide