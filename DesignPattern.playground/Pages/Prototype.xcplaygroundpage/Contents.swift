/*:
 # Prototype Pattern
 \
 **意图**: 用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。
 \
 **优点**: 1、性能提高。 2、逃避构造函数的约束。
 \
 **缺点**: 1、配备克隆方法需要对类的功能进行通盘考虑，这对于全新的类不是很难，但对于已有的类不一定很容易，特别当一个类引用不支持串行化的间接对象，或者引用含有循环结构的时候。 2、必须实现 Cloneable 接口。 3、逃避构造函数的约束。
 */
/*:
 - Example: 我们将创建一个抽象类 Shape 和扩展了 Shape 类的实体类。下一步是定义类 ShapeCache，该类把 shape 对象存储在一个 Hashtable 中，并在请求的时候返回它们的克隆。
 PrototypPatternDemo，我们的演示类使用 ShapeCache 类来获取 Shape 对象。\
 ![ClassDiagram](ClassDiagram.png)\
 \
 `PrototypeDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)