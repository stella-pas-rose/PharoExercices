"
MyLinkedList
A baseline is a kind of map to load project.

Description
A LinkedList package where you can add Node, give them a value, and ask for the size of the list.

Dependencies
No baseline! Houston we have a problem
"
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
	"add a new node at the end of the list"
	|n| 
	n := first.
	
	n ifNil: [ first:= aNode].
	[ n next isNil ] whileFalse: [ n := n next ].
	n next: aNode.
	aNode next: nil.
	
	 
]

{ #category : 'accessing' }
MyLinkedList >> first [
	"return the first node of the list"
	^ first
]

{ #category : 'accessing' }
MyLinkedList >> first: aNode [
	"update the first node of the list"
	first := aNode
	 
]

{ #category : 'initialization' }
MyLinkedList >> initialize [ 
	"initialize a empty LinkedList"
	super initialize.
	first := nil.
]

{ #category : 'testing' }
MyLinkedList >> isEmpty [
	"return true if the list is empty, false otherwise"
	|n|
	n := first.
	^ n ifNil:[true] ifNotNil:[false].
	
]

{ #category : 'accessing' }
MyLinkedList >> size [
	"return the size of the list"
	|c n|
	c := 0.
	n := first.
	[n] whileNotNil: [ c := c+1. n := n next. ].
	^c
]
