//: # Abstract Factory
//: \
//: **意图**：提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。\
//: **优点**：当一个产品族中的多个对象被设计成一起工作时，它能保证客户端始终只使用同一个产品族中的对象。\
//: **缺点**：产品族扩展非常困难，要增加一个系列的某一产品，既要在抽象的 Creator 里加代码，又要在具体的里面加代码。
/*:
 - Example: 我们将创建 Shape 和 Color 接口和实现这些接口的实体类。下一步是创建抽象工厂类 AbstractFactory。接着定义工厂类 ShapeFactory 和 ColorFactory，这两个工厂类都是扩展了 AbstractFactory。然后创建一个工厂创造器/生成器类 FactoryProducer。\
![ClassDiagram](ClassDiagram.png)\
 \
 `AbstractFactoryPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)