/*:
 # Composite Pattern
 \
 **意图**: 将对象组合成树形结构以表示"部分-整体"的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。
 \
 **优点**: 1、高层模块调用简单。 2、节点自由增加。
 \
 **缺点**: 在使用组合模式时，其叶子和树枝的声明都是实现类，而不是接口，违反了依赖倒置原则。
 */
/*:
 - Example: 我们有一个类 Employee，该类被当作组合模型类。CompositePatternDemo，我们的演示类使用 Employee 类来添加部门层次结构，并打印所有员工。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `CompositePatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)