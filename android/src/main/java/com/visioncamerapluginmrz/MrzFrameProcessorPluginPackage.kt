package com.visioncamerapluginmrz

import com.facebook.react.ReactPackage
import com.facebook.react.bridge.NativeModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ViewManager
import com.mrousavy.camera.frameprocessor.FrameProcessorPluginRegistry
import com.visioncamerapluginmrz.mrzframeprocessor.MrzFrameProcessorPlugin

class MrzFrameProcessorPluginPackage : ReactPackage {
  override fun createNativeModules(reactContext: ReactApplicationContext): List<NativeModule> {
    FrameProcessorPluginRegistry.addFrameProcessorPlugin("mrz") { options ->
      MrzFrameProcessorPlugin()
    }
    return emptyList()
  }

  override fun createViewManagers(reactContext: ReactApplicationContext): List<ViewManager<*, *>> {
    return emptyList()
  }
}