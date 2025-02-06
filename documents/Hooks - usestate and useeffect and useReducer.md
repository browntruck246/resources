In React, useState, useEffect, and useReducer are all hooks designed to help you manage state and side effects in functional components. Here's a breakdown of their differences:

# **1. useState:**

Purpose: Manages simple state in a functional component.

Usage: You call it with an initial state and it returns a pair: the current state value and a function to update it.

Example:

javascript

```
const [count, setCount] = useState(0); // Initial state is 0
```

Here, count is the state variable, and setCount is the function to update it.

# **2. useEffect:**

Purpose: Handles side effects in a functional component.

Usage: It takes a function as an argument, which can contain side effects such as fetching data, updating the DOM, or setting up subscriptions. You can also specify dependencies to control when the effect runs.

Example:

javascript

```
useEffect(() => {
  // Code here runs after the component mounts and after every update
  console.log('Component mounted or updated');
}, [count]); // Effect depends on 'count' variable
```

In this example, the effect runs when the component mounts and whenever count changes.

# **3. useReducer:**

Purpose: Manages more complex state logic in a functional component.

Usage: It is an alternative to useState for managing state with more complex transitions. You define a reducer function that specifies how the state updates based on actions, and then use useReducer to integrate this logic.

Example:

javascript

```
const initialState = { count: 0 };

function reducer(state, action) {
  switch (action.type) {
    case 'increment':
      return { count: state.count + 1 };
    case 'decrement':
      return { count: state.count - 1 };
    default:
      throw new Error();
  }
}

const [state, dispatch] = useReducer(reducer, initialState);

// To update the state
dispatch({ type: 'increment' });
```

Here, state is the current state, and dispatch is used to send actions to the reducer function to update the state.

# **In summary:**

useState: Simple state management.

useEffect: Managing side effects and lifecycle events.

useReducer: Complex state management with action-based state transitions
