/*:
 # Proxy Pattern
 \
 **意图**: 为其他对象提供一种代理以控制对这个对象的访问。
 \
 **优点**: 1、职责清晰。 2、高扩展性。 3、智能化。
 \
 **缺点**: 1、由于在客户端和真实主题之间增加了代理对象，因此有些类型的代理模式可能会造成请求的处理速度变慢。 2、实现代理模式需要额外的工作，有些代理模式的实现非常复杂。
 */
/*:
 - Example: 我们将创建一个 Image 接口和实现了 Image 接口的实体类。ProxyImage 是一个代理类，减少 RealImage 对象加载的内存占用。
 ProxyPatternDemo，我们的演示类使用 ProxyImage 来获取要加载的 Image 对象，并按照需求进行显示。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `ProxyPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)