Class {
	#name : 'MyLinkedList',
	#superclass : 'Object',
	#instVars : [
		'first'
	],
	#category : 'MyLinkedList',
	#package : 'MyLinkedList'
}

{ #category : 'accessing' }
MyLinkedList >> add: aNode [
	|n| 
	n := first.
	
	n ifNil: [ first:= aNode].
	[ n next isNil ] whileFalse: [ n := n next ].
	n next: aNode.
	aNode next: nil.
	
	 
]

{ #category : 'accessing' }
MyLinkedList >> first [
	^ first
]

{ #category : 'accessing' }
MyLinkedList >> first: aNode [
	first := aNode
	 
]

{ #category : 'initialization' }
MyLinkedList >> initialize [ 
	super initialize.
	first := nil.
]

{ #category : 'testing' }
MyLinkedList >> isEmpty [
	|n|
	n := first.
	^ n ifNil:[true] ifNotNil:[false].
	
]
