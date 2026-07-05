A PSTestCommand is a simple command double used by command history tests.
It records execute and unexecute calls in a shared log.

Instance Variables
	log:	<OrderedCollection>
	name:	<String>

log
	- The collection receiving execution entries

name
	- The name used to identify this command in the log