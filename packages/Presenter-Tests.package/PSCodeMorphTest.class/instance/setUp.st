running
setUp

	super setUp.
	self codeMorph: PSCodeMorph new.
	self codeMorph textMorph contents: 'self size'.
	self codeMorph center: self slide center.
	self slide addContent: self codeMorph
