toolbuilder
styleMenuBar: aBuilder
	"Only works with Morphs!"
	self menuBarButtonData do: [ :each |
		(aBuilder widgetAt: (each at: #name) ifAbsent: [nil])
			borderWidth: 0]