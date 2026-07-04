styling
closeColorDialog

	(self valueOfProperty: #colorDialog ifAbsent: [nil])
		ifNotNil: [:picker |
			picker abandon.
			self setProperty: #colorDialog toValue: nil]