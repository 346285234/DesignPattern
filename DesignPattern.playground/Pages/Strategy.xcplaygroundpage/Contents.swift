/*:
 # Strategy Pattern
 \
 **意图**: 定义一系列的算法,把它们一个个封装起来, 并且使它们可相互替换。
 \
 **优点**: 1、算法可以自由切换。 2、避免使用多重条件判断。 3、扩展性良好。
 \
 **缺点**: 1、策略类会增多。 2、所有策略类都需要对外暴露。
 */
/*:
 - Example: 我们将创建一个定义活动的 Strategy 接口和实现了 Strategy 接口的实体策略类。Context 是一个使用了某种策略的类。
 StrategyPatternDemo，我们的演示类使用 Context 和策略对象来演示 Context 在它所配置或使用的策略改变时的行为变化。
 \
 ![ClassDiagram](ClassDiagram.png)\
 \
 `StrategyPatternDemo.main()`
 */
//: - - -
//: [Previous](@previous) | [Next](@next)
