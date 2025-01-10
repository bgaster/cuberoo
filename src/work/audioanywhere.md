---
tags: work
title: "Audio Anywhere"
workTags: ["project", "presentation"]
workYear: "2020"
description: Project exploring the idea of compile once, run anywhere for audio DSP code
thumbnail: ./imgs/vl1-emulation-screenshot.png
thumbnailAlt: Image of Casio VL1 emulation with Audio Anywhere
layout: workItem
---

## *{{title}}*, {{workYear}}

<img src="/imgs/nime2021_aa_screenshot.jpg" alt=""/>

The ideal of compile once and run anywhere has been a dream in computer science
for as long as it has been an area of research. From the early days of Lisp,
through to Java and Python with its import ideal. However, to date these
offerings, as amazing as they are, have failed to reach performance close to
what system languages C and C++ can achieve.

Over the last few years a new kid on the block has emerged as an interesting
inflection point in the search for a compile once, run anywhere target for
compiling system based languages. WebAssembly (or Wasm) is an open standard,
originally developed by the four main browser vendors, specifying a portable
format for executable programs, including interfaces for facilitating
interactions between such programs and their host environment.

The goal of Audio Anywhere is to explore the idea of compile once, run anywhere
for audio DSP code. Audio Anywhere combines Faust, for audio DSP code, and
HTML5 to enable development of modern audio synthesis and effects tools. The
Faust DSP code is complied once into WebAssembly, but unlike early work the
resulting audio code is not hosted within a browser, but instead translated on
the fly to native code running within a hosting application. This means that,
in theory, an Audio Anywhere module can run anywhere, including platforms where
browsers are not available. For the initial implementation of Audio Anywhere,
UIs can be described and implemented in HTML5, but this is not a requirement,
as the control component is independent of the audio component. This enables
interfaces to range from conventional plugin GUIs, remote controllers connected
via the Internet of Musical Things, to Embedded hardware interfaces.

# Papers

<div class="about-text">

  <h2>
    <img src="/imgs/aa_nime_text_logo.png" class="about-title-graphic" style="width:9ch;height:7.4rem;" alt=""/>
  </h2>
  <p>
    Gaster, Benedict. R. and Challinor, Ryan. (2021) Bespoke Anywhere. NIME'21: Proceedings of the 
    21st New Interfaces for Musical Expression, June 2021.
  </p>
</div>

<iframe width="560" height="315" src="https://www.youtube.com/embed/UkzqccmCmIo?si=Q6CmoSbqO5EARi9d" 
title="NIME 2021 Presentation" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

[Paper](/imgs/bespoke_anywhere.pdf)

---

Gaster, Benedict R. and Cole, Max. (2020) Audio Anywhere with Faust.
Proceedings of the 2nd International Faust Conference (IFC-20), December 2020.

[Paper](/imgs/aa_faust2020-final.pdf)

# Source code

There are currently three main repos for this work:

- [AA example](https://github.com/bgaster/aa_examples)
- [AA standalone app](https://github.com/bgaster/aa_standalone)
- [AA Wasmtime runtime](https://github.com/bgaster/aa_wasmtime)