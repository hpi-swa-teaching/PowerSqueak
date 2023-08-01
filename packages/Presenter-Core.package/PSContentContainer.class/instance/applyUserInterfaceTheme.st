updating
applyUserInterfaceTheme


	super applyUserInterfaceTheme.
	
	self resizeHandles do: [:handle | handle color: self handleColor].