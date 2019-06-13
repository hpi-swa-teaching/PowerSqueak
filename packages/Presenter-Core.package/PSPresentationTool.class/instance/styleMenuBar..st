toolbuilder
styleMenuBar: aBuilder
	"Only for aesthetics, only works with Morphs!"
	self menuBarButtonData do: [ :each |
		(aBuilder widgetAt: (each at: #name)) borderWidth: 0]