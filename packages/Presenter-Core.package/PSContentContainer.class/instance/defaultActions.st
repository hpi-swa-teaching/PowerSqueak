context menu
defaultActions

	 ^ {self grabChildData.
		self deleteData.
		self recolorData.
		self recolorBorderData.
		self changeBorderWidthData.
		self bringToFrontData.
		self sendToBackData.
		self duplicateData.
		self inspectContentData.
		self openScriptingToolData} asOrderedCollection