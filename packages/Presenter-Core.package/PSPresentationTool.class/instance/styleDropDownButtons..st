toolbuilder
styleDropDownButtons: aBuilder
	"Only for aesthetics, only works with Morphs!"
	self buttonData dropDownMenuButtonData do: [ :each |
		(aBuilder widgetAt: (each at: #name)) borderWidth: 0]