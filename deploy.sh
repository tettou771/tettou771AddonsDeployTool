#!/bin/sh

account="tettou771"

addons="ofxComponent
ofxComponentUI
ofxDateTimeString
ofxFpsAutoReducer
ofxHelpMessage
ofxTextFlow
ofxDisplayMessage
ofxUI
ofxQuadWarp
ofxQuadCurveWarp
ofxWMFVideoPlayer
ofxFisheye
ofxHvcP2
ofxURG
ofxChatGPT
ofxWhisper
ofxKoaWindGraphy
ofxOrbbec"

for addon in $addons; do
	#echo "$addon ${addon#*\/}"
	bash clone_pull.sh ../../addons/${addon#*\/} git@github.com:$account/$addon
done

