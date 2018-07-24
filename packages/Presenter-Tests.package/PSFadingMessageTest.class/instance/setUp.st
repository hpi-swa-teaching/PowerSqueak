running
setUp

	super setUp.
	self message: (PSFadingMessage for: 'Lorem Ipsum').
	self message openInWorld: self world