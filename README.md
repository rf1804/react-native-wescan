<p align="center">
  <a href="https://www.npmjs.com/package/react-native-wescan"><img src="https://img.shields.io/npm/dm/react-native-wescan.svg?style=flat-square" alt="NPM downloads"></a>
  <a href="https://www.npmjs.com/package/react-native-wescan"><img src="https://img.shields.io/npm/v/react-native-wescan.svg?style=flat-square" alt="NPM version"></a>
  <a href="/LICENSE"><img src="https://img.shields.io/npm/l/react-native-wescan.svg?style=flat-square" alt="License"></a>
  <a href="https://twitter.com/mraja2943"><img src="https://img.shields.io/twitter/follow/mraja2943.svg?style=social&label=Follow" alt="Follow on Twitter"></a>
</p>

# react-native-wescan

## Getting started

`$ npm install react-native-wescan --save`

### Mostly automatic installation

`$ react-native link react-native-wescan`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-wescan` and add `RNWescan.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNWescan.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<


## Usage
```javascript
import RNWescan from 'react-native-wescan';


RNWescan.scanDocument((response) => {
  console.log(response) //It will give the private path of the final image
})
```
