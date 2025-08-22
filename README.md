# RN Prebuilt Package for macOS

> 📨 Owlu의 React Native 모듈들을 macOS에서 간편하게 사용할 수 있도록  
> 사전 빌드된 **XCFrameworks**와 **Swift Package Manager(SPM)** 설정을 제공합니다.

---

![build](https://img.shields.io/badge/build-passing-brightgreen)
![platform](https://img.shields.io/badge/platform-macOS-lightgrey)
![spm](https://img.shields.io/badge/SPM-compatible-blue)
![swift](https://img.shields.io/badge/Swift-5.9%20|%206.0%20|%206.1-orange)

---

## 📦 Installation

SPM을 통해 간단히 통합할 수 있습니다:

1. Xcode → **File > Add Packages…**
2. URL 입력: https://github.com/Grwaywee/RNPrebuildforMac.git  
3. Version → **Exact `1.0.6`** 선택 후 Add
4. 필요한 모듈만 체크 (예: `React`, `React_jsc`, `yoga`, `CoreModules`, `RCTImage`, `RCTText`, `RCTNetwork`, `RCTAnimation`, `RCTLinking`, `RCTVibration`)

---

## 🚀 Usage

Swift 예시:

```swift
import React
import CoreModules

// 초기화 예시
@main
struct OwluApp: App {
 var body: some Scene {
     WindowGroup {
         ContentView()
     }
 }
}
```

Objective-C 예시:
```objc
@import React;
@import CoreModules;

// ...
```
---

## 📖 Notes
	•	XCFrameworks는 사전 빌드되어 제공되므로 별도의 Pod 설치가 필요 없습니다.
	•	v1.0.2와 1.0.2 두 가지 태그 모두 지원하여 SPM 버전 지정 문제를 방지합니다.

---

## 👨‍💻 Contributing

이슈나 PR은 언제나 환영합니다 🙌
버그 리포트는 Issues 탭을 이용해 주세요.

## 📜 License

MIT License © 2025 Owlu
