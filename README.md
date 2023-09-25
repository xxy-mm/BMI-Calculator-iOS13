
![App Brewery Banner](Documentation/AppBreweryBanner.png)

# BMI Calculator

## Our Goal

The goal of this tutorial is to learn more about Optionals, solidify your understanding of the MVC design pattern and to introduce the concept of Classes. We’ll compare objects created from classes with instances of Structs that we learnt about earlier.

## What you will create

By the end of the module, you will have made a Body Mass Index calculator. Based on the user’s weight and height it will calculate their body mass and give a piece of health advice depending on whether if they have eaten too many pies or if they need to eat more pies.

## What you will learn

* How to create multi-screen apps with animated navigation.
  * segue
  * performSegue
  * prepare

    ```swift
    self.performSegue(withIdentifier: "goToResult", sender: self)

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.dmiValue = calculatorBrain.getBMIValue()
            resultVC.advice = calculatorBrain.getAdvice()
            resultVC.color = calculatorBrain.getColor()
        }
        }
    ```

* Optional binding, optional chaining and the nil coalescing operator.

    ```swift
    let someVar = someOptional?.someProperty
    let anotherVar = someLabel.text ?? ""
    if let yetAnotherVar = someOptional {
        // yetAnotherVar is not optional 
    }

    if someOptional != nil {
        let someVar = someOptional! // someVar is not optional
    }
    ```

* How to create classes and difference between classes and structs.
  * class instances are passed by reference
  * struct instances are passed by value

    ```swift
    class SomeClass {}
    ```

* Pass by value vs. pass by reference.

* Formatting Strings.

  ```swift
  String(format: "%.2f", someNumber)
  ```

* Color literals.
  * no color literals now. but you can create your own snippet.

>This is a companion project to The App Brewery's Complete App Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)

![End Banner](Documentation/readme-end-banner.png)
