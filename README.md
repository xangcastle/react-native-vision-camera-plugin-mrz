# react-native-vision-camera-plugin-mrz

MRZ scanner
A [VisionCamera](https://github.com/mrousavy/react-native-vision-camera) Frame Processor Plugin to preform mrz detection on images using [**Tensorflow**](https://www.tensorflow.org/).


## Installation

```sh
yarn add react-native-vision-camera-plugin-mrz
cd ios && pod install
```

Add the plugin to your `babel.config.js`:

```js
module.exports = {
  plugins: [
    [
      'react-native-reanimated/plugin',
      {
        globals: ['__mrz'],
      },
    ],
  ],
}
    // ...
```

> Note: You have to restart metro-bundler for changes in the `babel.config.js` file to take effect.


## Usage

```js
import { mrz } from "react-native-vision-camera-plugin-mrz";

function App() {
  const frameProcessor = useFrameProcessor((frame) => {
    'worklet'
    const mrzInfo = mrz(frame)
    console.log(`MRZ info: ${mrzInfo}`)
  }, [])

  return (
    <Camera frameProcessor={frameProcessor} {...cameraProps} />
  )
}
```


## Data

`mrz(frame)` returns an `MRZFrame` with the following data shape. See the example for how to use this in your app.

 ``` jsx
  MRZFrame = {
    result: {
      text: string, // Raw result text
    ;
};
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
