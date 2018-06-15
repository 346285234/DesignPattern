/*:
 # Memento Pattern
 \
 **意图**: 在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。
 \
 **优点**: 1、给用户提供了一种可以恢复状态的机制，可以使用户能够比较方便地回到某个历史的状态。 2、实现了信息的封装，使得用户不需要关心状态的保存细节。
 \
 **缺点**: 消耗资源。如果类的成员变量过多，势必会占用比较大的资源，而且每一次保存都会消耗一定的内存。
 */
/*:
 - Example: 备忘录模式使用三个类 Memento、Originator 和 CareTaker。Memento 包含了要被恢复的对象的状态。Originator 创建并在 Memento 对象中存储状态。Caretaker 对象负责从 Memento 中恢复对象的状态。
 MementoPatternDemo，我们的演示类使用 CareTaker 和 Originator 对象来显示对象的状态恢复。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `MementoPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)