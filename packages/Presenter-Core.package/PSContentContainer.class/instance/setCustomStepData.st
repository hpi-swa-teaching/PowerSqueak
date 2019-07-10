buttons
setCustomStepData

	 ^ Dictionary withAll: {
			#label -> 'set step'.
			#contextMenuLabel -> 'set step method'.
			#action -> #openScriptingTool.
			#size -> #bigButtonSize.
			#name -> #setCustomStepButton.
			#model -> self}