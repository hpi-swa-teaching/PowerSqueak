slide management
duplicateSlide: aSlide

	| command |
	command := PSDuplicateSlideCommand
		on: self
		duplicate: aSlide.
	self doCommand: command.
	^ command duplicate