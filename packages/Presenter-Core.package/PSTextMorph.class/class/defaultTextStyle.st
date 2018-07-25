constants
defaultTextStyle

	^ DefaultTextStyle
		ifNil: [TextStyle fontArray: 
			((5 to: 256) collect: [:eachSize | 
				TTCFont
					familyName: 'BitstreamVeraSans'
					pointSize: eachSize
					emphasis: 0])]