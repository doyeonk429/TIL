## Letter Spacing

> 자간을 조절하는 modifier

1. `.kerning(_ kerning: CGFloat)`
- 글자 사이에 kerning 값만큼 공간을 더함
- kerning값을 음수로 주면, 간격이 좁아진다

```swift
VStack(alignment: .leading) {
    Text("ABCDEF").kerning(-3)
    Text("ABCDEF")
    Text("ABCDEF").kerning(3)
}
```
![자간 이미지](https://docs-assets.developer.apple.com/published/5a6b1511e6ef1180ad841fa8859e5455/SwiftUI-Text-kerning-1~dark%402x.png)

2. `tracking(_ tracking: CGFloat)`
- `.kerning(_:)`과 유사하게 자간을 조절함.
- 렌더링 방식에서 font의 고유한 kerning 정보를 무시하고 모든 글자에 동일한 간격을 적용함

```swift
VStack(alignment: .leading) {
    Text("ABCDEF").tracking(-3)
    Text("ABCDEF")
    Text("ABCDEF").tracking(3)
}
```
![](https://docs-assets.developer.apple.com/published/4d443878aa581814d1ef42e167f5b2da/SwiftUI-Text-tracking~dark%402x.png)
