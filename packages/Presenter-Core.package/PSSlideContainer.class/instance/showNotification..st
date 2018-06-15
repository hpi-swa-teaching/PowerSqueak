notifications
showNotification: aString

	self deleteNotification.
	self notification: (PSFadingMessage for: aString).
	self notification 
			position: self topRight - (self notification width @ 0);
			openInWorld