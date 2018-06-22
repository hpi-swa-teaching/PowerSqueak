comparing
= other

	^ (other class == self class)
		and: [other style == self style]
		and: [other scalingSource  == self scalingSource]