---
tags: work
title: "Z Creative"
workTags: ["music", "research", "project"]
workYear: "2025 "
description: Exploring Zig, distributed music control. 
thumbnail: ./imgs/zcreative_logo.png
thumbnailAlt: Z Creative logo.
layout: workItem
dark: false
---

## *{{title}}*, {{workYear}}

Z Creative is a project where I am exploring the notion of distributed performance. In particular, 
I want to look at using the [Zig programming language](https://ziglang.org/) to build a system for 
musical performance that allows for controllers to be connected via a network. 

Currently, my current 
plan is for there to be a centrialized server that can stream audio, over a websocket, where the audio 
is generated at and on the server, while control is distributed, i.e. parameters can be performed from
anywhere on the network. Only control messages are sent from a user/performer to the server, while the server
can send both control and audio in real time. It is possible for a user/performer to send audio data, but not 
real time---what this means, I am not currently 100% sure.

This is a system of constraints, in paritcular I'd like to explore latency as a key creative driver. However, the notion of remoteness
or 'anywhere but here' is also a creative tool that is intended to be be lent into. What does it mean to be 'anywhere
but here', in the context of a shared musical performance? 

## More info

More information can be found ...
