/*:
 # Command Pattern
 \
 **意图**: 将一个请求封装成一个对象，从而使您可以用不同的请求对客户进行参数化。
 \
 **优点**: 1、降低了系统耦合度。 2、新的命令可以很容易添加到系统中去。
 \
 **缺点**: 使用命令模式可能会导致某些系统有过多的具体命令类。
 */
/*:
 - Example: 我们首先创建作为命令的接口 Order，然后创建作为请求的 Stock 类。实体命令类 BuyStock 和 SellStock，实现了 Order 接口，将执行实际的命令处理。创建作为调用对象的类 Broker，它接受订单并能下订单。
 Broker 对象使用命令模式，基于命令的类型确定哪个对象执行哪个命令。CommandPatternDemo，我们的演示类使用 Broker 类来演示命令模式。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `CommandPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)