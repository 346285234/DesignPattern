//
//  main.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 25/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

enum DesignPattern {
    case strategy
    case observer
    case decorator
    case factory
    case singleton
    case command
    case adapter
    case facade
    case template
    case iterator
    case composite
    case state
    case proxy
}

func runDesignPattern(with pattern: DesignPattern) {
    switch pattern {
    case .strategy:
        simulatDuck()
    case .observer:
        testWeatherStation()
    case .decorator:
        testDecorator()
    case .factory:
        testFactory()
    case .singleton:
        testSingleton()
    case .command:
        testCommand()
    case .adapter:
        testAdapter()
    case .facade:
        testFacade()
    case .template:
        testTemplate()
    case .iterator:
        testIterator()
    case .composite:
        testComposite()
    case .state:
        testState()
    case .proxy:
        testProxy()
    }
}

func simulatDuck() {
    let mallard = MallardDuck()
    mallard.performFly()
    mallard.performQuack()
    
    let model = ModelDuck()
    model.setFlyBehavior(flyBehavior: FlyRocketPowered())
    model.performFly()
    model.performQuack()
}

func testWeatherStation() {
    var weatherData = WeatherData()
    let generalDisplay = GeneralDisplay(id: "1", observable: &weatherData)
    weatherData.setMeasurements(temperature: 10, humidity: 20, pressure: 30)
    weatherData.setMeasurements(temperature: 20, humidity: 20, pressure: 30)
    weatherData.removeObserver(observer: generalDisplay)
    weatherData.setMeasurements(temperature: 30, humidity: 20, pressure: 30)
}

func testDecorator() {
    let decaf = Decaf()
    let milk = Milk(with: decaf)
    let mocha = Mocha(with: milk)
    
    print("Name: \(mocha.description)")
    print("Cost: \(mocha.cost())")
}

func testFactory() {
    let nyStore = NYPizzaStore()
    let pizza = nyStore.orderPizza(with: .cheese)
    print("Order: \(pizza.name)")
}

func testSingleton() {
    let boiler = ChocolateBoiler.sharedInstance
    boiler.fill()
    boiler.boil()
    boiler.drain()
}

func testCommand() {
    let remoteControl = RemoteControl()
    
    let light1 = Light(name: "Living room light")
    let light2 = Light(name: "Kitchen light")
    let ceilingFan = CeilingFan(name: "Living room ceiling fan")
    let garageDoor = GarageDoor(name: "Garage door")
    let stereo = Stereo(name: "Stereo")
    
    let lightOn1 = LightOnCommand(light: light1)
    let lightOff1 = LightOffCommand(light: light1)
    
    let lightOn2 = LightOnCommand(light: light2)
    let lightOff2 = LightOffCommand(light: light2)
    
    let stereoOn = StereoOnWithCDCommand(stereo: stereo)
    let stereoOff = StereoOffCommand(stereo: stereo)
    
    let ceilingFanHigh = CeilingFanHighCommand(ceilingFan: ceilingFan)
    let ceilingFanMedium = CeilingFanMediumCommand(ceilingFan: ceilingFan)
    let ceilingFanLow = CeilingFanLowCommand(ceilingFan: ceilingFan)
    let ceilingFanOff = CeilingFanOffCommand(ceilingFan: ceilingFan)
    
    let garageDoorUp = GarageDoorUpCommand(garageDoor: garageDoor)
    let garageDoorDown = GarageDoorDownCommand(garageDoor: garageDoor)
    
    remoteControl.setCommand(slot: 0, onCommand: lightOn1, offCommand: lightOff1)
    remoteControl.setCommand(slot: 1, onCommand: lightOn2, offCommand: lightOff2)
    remoteControl.setCommand(slot: 2, onCommand: stereoOn, offCommand: stereoOff)
    remoteControl.setCommand(slot: 3, onCommand: garageDoorUp, offCommand: garageDoorDown)
    remoteControl.setCommand(slot: 4, onCommand: ceilingFanHigh, offCommand: ceilingFanMedium)
    remoteControl.setCommand(slot: 5, onCommand: ceilingFanLow, offCommand: ceilingFanOff)
    
    let partyOn: [Command] = [lightOn1, lightOn2, stereoOn]
    let partyOff: [Command] = [lightOff1, lightOff2, stereoOff]
    let partyOnMacro = MacroCommand(commands: partyOn)
    let partyOffMacro = MacroCommand(commands: partyOff)
    remoteControl.setCommand(slot: 6, onCommand: partyOnMacro, offCommand: partyOffMacro)
    print(remoteControl)
    
//    for i in 0...5 {
//        remoteControl.onButtonWasPushed(slot: i)
//        remoteControl.offButtonWasPushed(slot: i)
//    }
//
//    print("undo:")
//    for _ in 0...7 {
//        remoteControl.undoButtonWasPushed()
//    }
    remoteControl.onButtonWasPushed(slot: 6)
    remoteControl.offButtonWasPushed(slot: 6)
    
    print("undo:")
    remoteControl.undoButtonWasPushed()
    remoteControl.undoButtonWasPushed()
    
}

func testAdapter() {
    func displayDuck(duck: ADDuck) {
        duck.fly()
        duck.quack()
    }
    
    let mallardDuck = ADMallardDuck()
    displayDuck(duck: mallardDuck)
    
    let wildTurkey = ADWildTurkey()
    let turkeyAdapter = ADTurkeyAdapter(turkey: wildTurkey)
    displayDuck(duck: turkeyAdapter)
}

func testFacade() {
    let homeTheater = HomeTheaterFacade()
    homeTheater.watchMovie(dvd: "DVD 1", movie: "Chicken run")
    homeTheater.endMovie()
}

func testTemplate() {
    let tea = Tea()
    tea.prepareRecipe()
    
    let coffee = Coffee()
    coffee.prepareRecipe()
}

func testIterator() {
    class Waitress {
        var menus: [Menu]
        init(menus: [Menu]) {
            self.menus = menus
        }
        
        func printMenus() {
            for menu in menus {
                printMenu(menu: menu)
            }
        }
        
        func printMenu(menu: Menu) {
            print("Menu:")
            let iterator = menu.createIterator()
            while iterator.hasNext() {
                if let menuItem = iterator.next() as? MenuItem {
                    print("MenuItem: \(menuItem.description)")
                }
            }
        }
    }
    
    let menus: [Menu] = [PancakeHouseMenu(), DinnerMenu(), CafeMenu()]
    let waitress = Waitress(menus: menus)
    waitress.printMenus()
}

func testComposite() {
    class Waitress {
        var allMenu: COMenuComponent
        init(allMenu: COMenuComponent) {
            self.allMenu = allMenu
        }
        
        func printMenus() {
            print("------------Print All menu------------")
            allMenu.print()
        }
        
        func printVegetarian() {
            print("------------Print Vegetarian------------")
            let iterator = allMenu.createIterator()
            while iterator.hasNext() {
                let component = iterator.next()
                if component?.isVegetarian == true {
                    component?.print()
                }
            }
        }
    }
    // Menu
    let pancakeMenu = COMenu(name: "Pancake", description: "Breakfast")
    let dinnerMenu = COMenu(name: "Dinner", description: "Lunch")
    let cafeMenu = COMenu(name: "Cafe", description: "Supper")
    let dessertMenu = COMenu(name: "Dessert", description: "Additional")
    // Pancake menu
    let pancakeItem1 = COMenuItem(name: "K&B's pancake", isVegetarian: true, price: 3)
    let pancakeItem2 = COMenuItem(name: "Regular pancake", isVegetarian: false, price: 3)
    let pancakeItem3 = COMenuItem(name: "Waffles", isVegetarian: true, price: 4)
    pancakeMenu.add(component: pancakeItem1)
    pancakeMenu.add(component: pancakeItem2)
    pancakeMenu.add(component: pancakeItem3)
    // Dinner menu
    let dinnerItem1 = COMenuItem(name: "Rice", isVegetarian: true, price: 1)
    let dinnerItem2 = COMenuItem(name: "Green vegetables", isVegetarian: true, price: 1)
    let dinnerItem3 = COMenuItem(name: "Beef", isVegetarian: false, price: 7)
    let dessertItem1 = COMenuItem(name: "Bread", isVegetarian: true, price: 3)
    let dessertItem2 = COMenuItem(name: "Cake", isVegetarian: false, price: 3)
    dessertMenu.add(component: dessertItem1)
    dessertMenu.add(component: dessertItem2)
    dinnerMenu.add(component: dinnerItem1)
    dinnerMenu.add(component: dinnerItem2)
    dinnerMenu.add(component: dinnerItem3)
    dinnerMenu.add(component: dessertMenu)
    // Cafe menu
    let cafeItem1 = COMenuItem(name: "DarkRoast", isVegetarian: true, price: 3)
    let cafeItem2 = COMenuItem(name: "Espresso", isVegetarian: true, price: 3)
    cafeMenu.add(component: cafeItem1)
    cafeMenu.add(component: cafeItem2)
    
    // All menu
    let allMenu = COMenu(name: "All menu", description: "")
    allMenu.add(component: pancakeMenu)
    allMenu.add(component: dinnerMenu)
    allMenu.add(component: cafeMenu)
    
    let waitress = Waitress(allMenu: allMenu)
    waitress.printMenus()
    waitress.printVegetarian()
}

func testState() {
    let machine = GumballMachine()
    machine.insertQuarter()
    machine.refill(count: 4)
    machine.insertQuarter()
    machine.turnCrank()
    machine.insertQuarter()
    machine.turnCrank()
}

func testProxy() {
    let proxy = ImageProxy()
    print("Height: \(proxy.getIconHeight())")
    print("Width: \(proxy.getIconWidth())")
    proxy.paintIcon()
    
    print("Height: \(proxy.getIconHeight())")
    print("Width: \(proxy.getIconWidth())")
}

//let pattern: DesignPattern = .proxy
//runDesignPattern(with: pattern)

func testCombinePattern() {
    func quack(duck: CPQuackable) {
        duck.quack()
    }
    
    func testQuack(factory: CPAbstractDuckFactory) {
        let mallardDuck = factory.createMallardDuck()
        let redHeadDuck = factory.createRedHeadDuck()
        let duckCall = factory.createDuckCall()
        let rubberDuck = factory.createRubberDuck()
        let goose = CPGoose()
        let gooseAdapter = CPQuackCounter(duck: CPGooseAdapter(goose: goose))
        let artificialFlock = CPFlock(quackers: [duckCall, rubberDuck])
        let allFlock = CPFlock(quackers: [mallardDuck, redHeadDuck, artificialFlock, gooseAdapter])
        
        let logist = CPQuackLogist()
        allFlock.registerObserver(observer: logist)
        allFlock.quack()
        print("Quack times: \(CPQuackCounter.numberOfQuacks)")
    }
    
    testQuack(factory: CPCountingDuckFactory())
}

testCombinePattern()
