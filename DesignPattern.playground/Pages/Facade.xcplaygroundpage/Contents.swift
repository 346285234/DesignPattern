/*:
 # Facade Pattern
 \
 **意图**: 为子系统中的一组接口提供一个一致的界面，外观模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。
 \
 **优点**: 1、减少系统相互依赖。 2、提高灵活性。 3、提高了安全性。
 \
 **缺点**: 不符合开闭原则，如果要改东西很麻烦，继承重写都不合适。
 */
/*:
 - Example: 我们将创建一个 Shape 接口和实现了 Shape 接口的实体类。下一步是定义一个外观类 ShapeMaker。
 ShapeMaker 类使用实体类来代表用户对这些类的调用。FacadePatternDemo，我们的演示类使用 ShapeMaker 类来显示结果。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `FacadePatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)