slide loading
update: aSlide with: aDictionary

	aDictionary keysAndValuesDo: [:key :value |
		key = #expectedMorphCount ifFalse:
			[aSlide perform: (key, ':') asSymbol with: value]]