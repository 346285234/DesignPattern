//: # Factory Pattern
//: \
//: **意图**: 定义一个创建对象的接口，让其子类自己决定实例化哪一个工厂类，工厂模式使其创建过程延迟到子类进行。\
//: **优点**: 1. 一个调用者想创建一个对象，只要知道其名称就可以了。 2. 扩展性高，如果想增加一个产品，只要扩展一个工厂类就可以。 3. 屏蔽产品的具体实现，调用者只关心产品的接口。\
//: **缺点**: 每次增加一个产品时，都需要增加一个具体类和对象实现工厂，使得系统中类的个数成倍增加，在一定程度上增加了系统的复杂度，同时也增加了系统具体类的依赖。这并不是什么好事。
/*:
 - Example: 我们将创建一个 Shape 接口和实现 Shape 接口的实体类。下一步是定义工厂类 ShapeFactory。
 FactoryPatternDemo，我们的演示类使用 ShapeFactory 来获取 Shape 对象。它将向 ShapeFactory 传递信息（CIRCLE / RECTANGLE / SQUARE），以便获取它所需对象的类型。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `FactoryPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)