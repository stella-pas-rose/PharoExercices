Class {
	#name : 'MyLinkedList',
	#superclass : 'Object',
	#instVars : [
		'first'
	],
	#category : 'MyLinkedList',
	#package : 'MyLinkedList'
}

{ #category : 'initialization' }
MyLinkedList >> initialize [ 
	super initialize.
	first := nil.
]

{ #category : 'testing' }
MyLinkedList >> isEmpty [
	^ first isEmpty.
	
]
