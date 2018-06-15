/*:
 # Visitor Pattern
 \
 **意图**: 主要将数据结构与数据操作分离。
 \
 **优点**: 1、符合单一职责原则。 2、优秀的扩展性。 3、灵活性。
 \
 **缺点**: 1、具体元素对访问者公布细节，违反了迪米特原则。 2、具体元素变更比较困难。 3、违反了依赖倒置原则，依赖了具体类，没有依赖抽象。
 */
/*:
 - Example: 我们将创建一个定义接受操作的 ComputerPart 接口。Keyboard、Mouse、Monitor 和 Computer 是实现了 ComputerPart 接口的实体类。我们将定义另一个接口 ComputerPartVisitor，它定义了访问者类的操作。Computer 使用实体访问者来执行相应的动作。
 VisitorPatternDemo，我们的演示类使用 Computer、ComputerPartVisitor 类来演示访问者模式的用法。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `VisitorPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)
