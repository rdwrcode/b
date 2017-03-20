+++
date = "2017-03-15T19:48:40-06:00"
title = "ReactConf2017"
Description = "what will react be exactly?"
Tags = [
  "React",
  "2017",
  "AfterThought"
]

+++
## React component is the key

React components powered by virtual DOM, reconcilors and renderers give developers a slick way to customize any HTML element. (Fiber is coming.) React Router v4 embraces the concept of react component fully. Styled-component combines CSS further into the component. With different renderers, React blurs the boundaries among web, mobile, and VR apps. 

React components can be stateless. React components can have states. setState() can be used either setState({state: newState}) or functionally 
```
setState((state, props) => { 
  ...; 
  return {...}
}) 
```
It is the entry point to update the state, asynchronously. Ryan described React this way: setState() makes React what it is. VDOM is the implementation detail. JSX is syntax sugar. And lifecycles meaningless without it. 

React component is a function template with lifecycle hooks. Lifecycle methods are critical and new from templates before.

## some interesting stuff

Slot/fill is an elegant idea to extend the react app.

Prettier uses AST to make format simple, easy and pretty.

Reason (powered by OCaml) is going to make programming meta.

## others

Standards are moving slowly as usual but the innovations can not be stopped, especially with open source.

There are many JavaScript libraries or frameworks. To me each likes a book. Pick one you like to read. That is it.    
