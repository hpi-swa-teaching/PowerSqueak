execution
execute

	beforeState
		ifNil: [
			beforeState := PSPresentationState fromTool: self tool.
			self executeOnTool.
			afterState := PSPresentationState fromTool: self tool]
		ifNotNil: [afterState restoreOnTool: self tool]