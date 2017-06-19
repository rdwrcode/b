+++
date = "2017-06-19T09:16:57-06:00"
title = "reactState"
Description = "handle the states of react properly"
Tags = [
  "react",
  "state"
]

+++

[Source](https://medium.com/@housecor)

According to the React docs, the state should be treated as immutable. Never mutate this.state directly. Always use setState() to update the state.

## object assign (polyfill required for IE) 
```
updateState(e) {
  const {name, value} = e.target
  let user = Object.assign({}, this.state.user)
  user[name] = value;
  return this.setState({user})
}
```
Some options are available npm object-assign, Babel polyfill, and polyfill.io.

## object spread
```
updateState(e) {
  const {name, value} = e.target
  let user = {...this.state.user, [name]: value}
  return this.setState({user})
}
```

## immutability helper
```
import update from 'immutability-helper'

updateState(e) {
  let user = update(this.state.user, {$merge: {[target.name]: target.value}})
  return this.setState({user})
}
```

## immutable.js
```
// At top, import immutable
import { Map } from 'immutable';

// Later, in constructor...
this.state = {
  // Create an immutable map in state using immutable.js
  user: Map({ firstName: 'Cory', lastName: 'House'})
};

updateState({target}) {
 // this line returns a new user object assuming an immutable map is stored in state.
 let user = this.state.user.set(target.name, target.value);
 this.setState({user});
}
```


