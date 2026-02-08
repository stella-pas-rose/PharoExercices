Class {
	#name : 'MyNode',
	#superclass : 'Object',
	#instVars : [
		'value',
		'next'
	],
	#category : 'MyLinkedList',
	#package : 'MyLinkedList'
}

{ #category : 'accessing' }
MyNode >> next [
	"return the next node"
	^ next
]

{ #category : 'accessing' }
MyNode >> next: aNode [
	"add a Node next to this one"
	next := aNode
]

{ #category : 'accessing' }
MyNode >> value [
	"return the node value"
	^ value
]

{ #category : 'accessing' }
MyNode >> value: anInteger [
	"add a value to this node"
	value := anInteger 
]
