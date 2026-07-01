execution
execute

	self container
		ifNil: [
			self container: (self slide addContent: self morph).
			self location: (PSContentLocation of: self container)]
		ifNotNil: [self location restoreContainer: self container].
	^ self container