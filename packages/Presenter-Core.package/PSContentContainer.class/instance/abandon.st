submorphs-add/remove
abandon

	self slideContainer ifNotNil: [:container | container removeSelection].
	super abandon