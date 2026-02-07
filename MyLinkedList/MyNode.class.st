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
	^ next
]

{ #category : 'accessing' }
MyNode >> next: aNode [
	next := aNode
]

{ #category : 'accessing' }
MyNode >> value [
	^ value
]

{ #category : 'accessing' }
MyNode >> value: anInteger [
	value := anInteger 
]
