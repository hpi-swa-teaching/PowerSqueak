as yet unclassified
defaultActions

	 ^ {self grabChildData.
		self deleteData.
		self recolorData.
		self bringToFrontData.
		self sendToBackData.
		self duplicateData.} asOrderedCollection