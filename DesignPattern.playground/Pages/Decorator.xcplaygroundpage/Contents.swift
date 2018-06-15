/*:
 # Decorator Pattern
 \
 **意图**: 动态地给一个对象添加一些额外的职责。就增加功能来说，装饰器模式相比生成子类更为灵活。
 \
 **优点**: 装饰类和被装饰类可以独立发展，不会相互耦合，装饰模式是继承的一个替代模式，装饰模式可以动态扩展一个实现类的功能。
 \
 **缺点**: 多层装饰比较复杂。
 */
/*:
 - Example: 我们将创建一个 Shape 接口和实现了 Shape 接口的实体类。然后我们创建一个实现了 Shape 接口的抽象装饰类 ShapeDecorator，并把 Shape 对象作为它的实例变量。
 RedShapeDecorator 是实现了 ShapeDecorator 的实体类。
 DecoratorPatternDemo，我们的演示类使用 RedShapeDecorator 来装饰 Shape 对象。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `DecoratorPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)