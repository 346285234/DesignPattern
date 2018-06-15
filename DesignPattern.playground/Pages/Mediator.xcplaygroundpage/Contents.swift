/*:
 # Mediator Pattern
 \
 **意图**: 用一个中介对象来封装一系列的对象交互，中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
 \
 **优点**: 1、降低了类的复杂度，将一对多转化成了一对一。 2、各个类之间的解耦。 3、符合迪米特原则。
 \
 **缺点**: 中介者会庞大，变得复杂难以维护。
 */
/*:
 - Example: 我们通过聊天室实例来演示中介者模式。实例中，多个用户可以向聊天室发送消息，聊天室向所有的用户显示消息。我们将创建两个类 ChatRoom 和 User。User 对象使用 ChatRoom 方法来分享他们的消息。
 MediatorPatternDemo，我们的演示类使用 User 对象来显示他们之间的通信。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `MediatorPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)
