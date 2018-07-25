comparing
= otherTextAttribute

	^ (otherTextAttribute class == self class)
		and: [otherTextAttribute style == self style]
		and: [otherTextAttribute scalingSource  == self scalingSource]