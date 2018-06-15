/*:
 # Bridge Pattern
 \
 **意图**: 将抽象部分与实现部分分离，使它们都可以独立的变化。
 \
 **优点**: 1、抽象和实现的分离。 2、优秀的扩展能力。 3、实现细节对客户透明。
 \
 **缺点**: 桥接模式的引入会增加系统的理解与设计难度，由于聚合关联关系建立在抽象层，要求开发者针对抽象进行设计与编程。
 */
/*:
 - Example: 我们有一个作为桥接实现的 DrawAPI 接口和实现了 DrawAPI 接口的实体类 RedCircle、GreenCircle。Shape 是一个抽象类，将使用 DrawAPI 的对象。BridgePatternDemo，我们的演示类使用 Shape 类来画出不同颜色的圆。\
 ![ClassDiagram](ClassDiagram.png)\
 \
 `BrigePatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)