+++
Description = "State Management via Redux or Mobx"
Tags = [
  "state management",
  "redux",
  "mobx"
]
date = "2017-03-30T12:43:00-06:00"
title = "statemanagement"

+++

Redux comes from flux (action, dispatcher, store and view) with a bit simplification. It uses a single (global) store over multiple stores with the immutable state. The dispatcher becomes the pure function (Functional programming) to update the state. So we have the following formula.
```
(state, action) => newState
```
The state in Redux is normalized and referenced through its ID like a database.

Mobx takes both Object-oriented Programming and Reactive programming. It wraps the state into observables. The state is mutable and not normalized, perhaps nested.

Regardless the flavor, both Redux and Mobx is decoupling the state from the components. The state of application is from the store. The action to update the state is to the store.

Check [this article](https://www.robinwieruch.de/redux-mobx-confusion/).


  

