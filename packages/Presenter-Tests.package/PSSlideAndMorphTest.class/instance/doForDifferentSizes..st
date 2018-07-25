resizeToFit tests
doForDifferentSizes: aBlock

	self slide extent x - 100 to: self slide extent x + 100 by: 10 do: [:width | 
		self slide extent y - 100 to: self slide extent y + 100 by: 10 do: [:height |
			aBlock value: width value: height]]