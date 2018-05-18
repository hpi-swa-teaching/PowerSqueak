resizeToFit tests
doForDifferentSizes: aBlock

	10 to: self slide extent x + 200 by: 10 do: [ : width | 
		10 to: self slide extent y + 200 by: 10 do: [ : height |
			aBlock value: width value: height
		]
	]