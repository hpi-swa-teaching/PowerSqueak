styling
closeBackgroundColorDialog

	(self valueOfProperty: #backgroundColorDialog ifAbsent: [nil])
		ifNotNil: [:picker |
			picker abandon.
			self setProperty: #backgroundColorDialog toValue: nil]