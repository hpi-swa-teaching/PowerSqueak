baseline
preLoad
	
	"Fixes an invalid state, which is present in some versions of Squeak.
	Required in order for Text scaling to work correctly"
	(TextStyle named: 'BitstreamVeraSans') fontArray do: [:font |
		font
			instVarNamed: #derivatives
			put: ((font instVarNamed: #derivatives) reject: [:ea | ea isKindOf: TTCFontSet])]