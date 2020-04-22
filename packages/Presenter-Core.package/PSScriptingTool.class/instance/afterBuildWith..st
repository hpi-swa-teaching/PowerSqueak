toolbuilder
afterBuildWith: aBuilder
	
	self codePane: (aBuilder widgetAt: #CodePane). 
	self codePane
		acceptAction: [:aText | self accept: aText].