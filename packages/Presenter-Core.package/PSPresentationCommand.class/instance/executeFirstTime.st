execution
executeFirstTime

	beforeState := PSPresentationState fromTool: self tool.
	self executeOnTool.
	afterState := PSPresentationState fromTool: self tool.
	executed := true