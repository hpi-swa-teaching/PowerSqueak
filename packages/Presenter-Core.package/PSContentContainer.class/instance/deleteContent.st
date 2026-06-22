submorphs-add/remove
deleteContent

	self slideContainer ifNil: [^ self basicDeleteContent].
	self slideContainer model ifNil: [^ self basicDeleteContent].
	self slideContainer model doCommand: (PSDeleteContentCommand on: self).
	^ self