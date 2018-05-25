as yet unclassified
removeResizeHandles

	self resizeHandles do: [:each | each abandon].
	self resizeHandles removeAll