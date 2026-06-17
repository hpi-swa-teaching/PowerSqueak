contentHandling
addContentUndoably: aMorph

	| command |
	self slideContainer ifNotNil: [
		self slideContainer model ifNotNil: [
			command := PSAddContentCommand add: aMorph to: self.
			self slideContainer model doCommand: command.
			^ command container]].
	^ self addContent: aMorph