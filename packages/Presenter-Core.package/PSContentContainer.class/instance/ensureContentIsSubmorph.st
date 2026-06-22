undo-redo
ensureContentIsSubmorph

	(self submorphs includes: self content)
		ifFalse: [self addMorph: self content]