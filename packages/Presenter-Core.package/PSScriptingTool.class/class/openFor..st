instance creation
openFor: aReceiver

	^ (ToolBuilder default build: (self new receiver: aReceiver)) openInWorld: aReceiver world