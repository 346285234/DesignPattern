/*: 
 # Builder Pattern
 \
 **意图**: 将一个复杂的构建与其表示相分离，使得同样的构建过程可以创建不同的表示。
 \
 **优点**: 1、建造者独立，易扩展。 2、便于控制细节风险。
 \
 **缺点**: 1、产品必须有共同点，范围有限制。 2、如内部变化复杂，会有很多的建造类。
*/
/*:
 - Example: 我们假设一个快餐店的商业案例，其中，一个典型的套餐可以是一个汉堡（Burger）和一杯冷饮（Cold drink）。汉堡（Burger）可以是素食汉堡（Veg Burger）或鸡肉汉堡（Chicken Burger），它们是包在纸盒中。冷饮（Cold drink）可以是可口可乐（coke）或百事可乐（pepsi），它们是装在瓶子中。\
 ![ClassDiagram](ClassDiagram.png)\
 \
 `BuilderPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)