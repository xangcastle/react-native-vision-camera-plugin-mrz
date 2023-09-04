import { NativeModules, Platform } from 'react-native';
// @ts-ignore
import { VisionCameraProxy, Frame } from 'react-native-vision-camera';

const plugin = VisionCameraProxy.getFrameProcessorPlugin('mrz');

export function mrz(frame: Frame) {
  'worklet';
  return plugin?.call(frame);
}

const LINKING_ERROR =
  `The package 'react-native-vision-camera-plugin-mrz' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

const VisionCameraPluginMrz = NativeModules.VisionCameraPluginMrz
  ? NativeModules.VisionCameraPluginMrz
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function multiply(a: number, b: number): Promise<number> {
  return VisionCameraPluginMrz.multiply(a, b);
}
