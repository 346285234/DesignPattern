/*:
 # Interpreter Pattern
 \
 **意图**: 给定一个语言，定义它的文法表示，并定义一个解释器，这个解释器使用该标识来解释语言中的句子。
 \
 **优点**: 1、可扩展性比较好，灵活。 2、增加了新的解释表达式的方式。 3、易于实现简单文法。
 \
 **缺点**: 1、可利用场景比较少。 2、对于复杂的文法比较难维护。 3、解释器模式会引起类膨胀。 4、解释器模式采用递归调用方法。
 */
/*:
 - Example: 我们将创建一个接口 Expression 和实现了 Expression 接口的实体类。定义作为上下文中主要解释器的 TerminalExpression 类。其他的类 OrExpression、AndExpression 用于创建组合式表达式。
 InterpreterPatternDemo，我们的演示类使用 Expression 类创建规则和演示表达式的解析。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `InterpreterPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)