submorphs-add/remove
basicDeleteContent

	self slideContainer ifNotNil: [:container | container removeSelection].
	self abandon.
	^ self