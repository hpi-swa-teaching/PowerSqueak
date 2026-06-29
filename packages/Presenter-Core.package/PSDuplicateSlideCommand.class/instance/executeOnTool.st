execution
executeOnTool

	self duplicate ifNil: [self duplicate: self slide duplicate].
	self tool basicDuplicateSlide: self duplicate after: self slide