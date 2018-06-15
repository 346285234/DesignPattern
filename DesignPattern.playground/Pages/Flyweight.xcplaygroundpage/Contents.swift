/*:
 # Flyweight Pattern
 \
 **意图**: 运用共享技术有效地支持大量细粒度的对象。
 \
 **优点**: 大大减少对象的创建，降低系统的内存，使效率提高
 \
 **缺点**: 提高了系统的复杂度，需要分离出外部状态和内部状态，而且外部状态具有固有化的性质，不应该随着内部状态的变化而变化，否则会造成系统的混乱。
 */
/*:
 - Example: 我们将创建一个 Shape 接口和实现了 Shape 接口的实体类 Circle。下一步是定义工厂类 ShapeFactory。
 ShapeFactory 有一个 Circle 的 HashMap，其中键名为 Circle 对象的颜色。无论何时接收到请求，都会创建一个特定颜色的圆。ShapeFactory 检查它的 HashMap 中的 circle 对象，如果找到 Circle 对象，则返回该对象，否则将创建一个存储在 hashmap 中以备后续使用的新对象，并把该对象返回到客户端。
 FlyWeightPatternDemo，我们的演示类使用 ShapeFactory 来获取 Shape 对象。它将向 ShapeFactory 传递信息（red / green / blue/ black / white），以便获取它所需对象的颜色。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `FlyweightPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)