slide loading
update: aSlide with: aDictionary

	aDictionary keysAndValuesDo: [:key :value | aSlide perform: (key,':') asSymbol with: value]