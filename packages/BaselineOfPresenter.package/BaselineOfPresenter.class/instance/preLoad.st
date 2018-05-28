as yet unclassified
preLoad

	(TextStyle named: 'BitstreamVeraSans') fontArray do: [:font |
	font
		instVarNamed: #derivatives
		put: ((font instVarNamed: #derivatives) reject: [:ea | ea isKindOf: TTCFontSet])]