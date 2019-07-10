context menu
defaultActions

	 ^ {self grabChildData.
		self deleteData.
		self recolorData.
		self bringToFrontData.
		self sendToBackData.
		self duplicateData.
		self setCustomStepData} asOrderedCollection