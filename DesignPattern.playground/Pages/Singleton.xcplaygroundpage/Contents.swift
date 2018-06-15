//: # Singleton Pattern
//: \
//: **意图**：保证一个类仅有一个实例，并提供一个访问它的全局访问点。\
//: **优点**： 1、在内存里只有一个实例，减少了内存的开销，尤其是频繁的创建和销毁实例（比如管理学院首页页面缓存）。 2、避免对资源的多重占用（比如写文件操作）。\
//: **缺点**：没有接口，不能继承，与单一职责原则冲突，一个类应该只关心内部逻辑，而不关心外面怎么样来实例化。
/*:
 - Example: 我们将创建一个 SingleObject 类。SingleObject 类有它的私有构造函数和本身的一个静态实例。
 SingleObject 类提供了一个静态方法，供外界获取它的静态实例。SingletonPatternDemo，我们的演示类使用 SingleObject 类来获取 SingleObject 对象。\
 ![ClassDiagram](ClassDiagram.png)\
 \
 `SingletonPatternDemo.main()`
 */
//: - - -
/*:
## 单例模式的几种实现方式
1. 懒汉式，线程不安全
* 是否 Lazy 初始化：是
* 是否多线程安全：否
* 实现难度：易
 \
 ![LazyUnsafe](LazyUnsafe.png)
2. 懒汉式，线程安全
* 是否 Lazy 初始化：是
* 是否多线程安全：是
* 实现难度：易
 \
 ![LazySafe](LazySafe.png)
3. 饿汉式
* 是否 Lazy 初始化：否
* 是否多线程安全：是
* 实现难度：易
 \
 ![UnlazySafe](UnlazySafe.png)
4. 双检锁/双重校验锁(DCL)
* 是否 Lazy 初始化：是
* 是否多线程安全：是
* 实现难度：难
 \
 ![DCL](DCL.png)
5. 登记式/静态内部类
 * 是否 Lazy 初始化：是
 * 是否多线程安全：是
 * 实现难度：一般
\
 ![Register](Register.png)
 6. 枚举
 * 是否 Lazy 初始化：否
 * 是否多线程安全：是
 * 实现难度：易
 \
 ![Enum](Enum.png)
 */
//: - - -
//: [Previous](@previous) | [Next](@next)