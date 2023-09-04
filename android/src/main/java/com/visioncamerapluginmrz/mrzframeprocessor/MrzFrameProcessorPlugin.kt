package com.visioncamerapluginmrz.mrzframeprocessor

import com.mrousavy.camera.frameprocessor.Frame
import com.mrousavy.camera.frameprocessor.FrameProcessorPlugin

class MrzFrameProcessorPlugin: FrameProcessorPlugin() {
  override fun callback(frame: Frame, arguments: Map<String, Any>?): Any? {
    // code goes here
    return null
  }
}