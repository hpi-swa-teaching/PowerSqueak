slide miniatures
highlightCurrentMiniature

	self miniatures do: [:each | each unHighlight].
	self currentMiniature highlight