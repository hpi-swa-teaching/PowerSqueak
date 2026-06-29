execution
execute

	self beforeState
		ifNil: [
			self beforeState: (PSPresentationState fromTool: self tool).
			self executeOnTool.
			self afterState: (PSPresentationState fromTool: self tool)]
		ifNotNil: [self afterState restoreOnTool: self tool]