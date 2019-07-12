buttons
openScriptingToolData

	 ^ Dictionary withAll: {
			#label -> 'Scripting'.
			#contextMenuLabel -> 'Open scripting tool'.
			#action -> #openScriptingTool.
			#size -> #bigButtonSize.
			#name -> #openScriptingToolButton.
			#model -> self}