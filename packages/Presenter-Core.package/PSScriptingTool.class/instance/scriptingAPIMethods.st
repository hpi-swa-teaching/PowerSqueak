nil
scriptingAPIMethods

	^ self methodProperties keys collect: [:each | each copyWithRegex: '{\d+}' matchesReplacedWith: '']