## Chapter 1 - Building Abstractions with Procedures
- Going to study computational process
- Processes manipulate other abstract things called data
- A process is directed by a pattern of rules called a program

### 1.1 - The Elements of Programming
- Every language has three mechanisms for combining simple ideas into more complex ideas
    - Primitive expressions: simplest entities the languge is concerned with
    - Means of combination: by which compound elements are built from simpler ones
    - Means of abstraction: by which compound elements can be named and manipulated as units
- combinations - delimiting a list of expressions within parentheses in order to denote procedure application
    - operators - the leftmost element in the list
    - operands - the other elements
    - the value of a combination is obtained by applying the procedure specified by the operator to the arguments that are the values of the operands
- prefix notation - convention of placing the operator to the left of the operands
    - can accommodate procedures that may take an arbitrary number of arguments
    - extends in a straightforward way to allow combinations to be nested
- interpreter always runs in same cycle - read-eval-print loop
- environment (gloabl environment) - interpreter maintained memory that keeps track of name-object paris (variables)
- special forms - exceptions to the general evaluation rule
- procedure definitions - a compound operation can be given a name and then referred to as a unit
- Applicative order versus normal order
    - normal-order evaluation - “fully expand and then reduce”
    - applicative-order evaluation - “evaluate the arguments and then apply” (method that the interpreter actually uses)
- case analysis - cond
- if statements - (if ⟨predicate⟩ ⟨consequent⟩ ⟨alternative⟩)
- logical composition operations - and/or/not
- and and or are special forms, not procedures, because the subexpressions are not necessarily all evaluated. Not is an ordinary procedure
- bound variable - procedure definition binds its formal parameters
- scope - set of expressions for which a binding defines a name
- block structure - nesting of definitions
- lexical scoping - procedures can be enclosed with access to free variables

### 1.2 - Procedures and the Processes They Generate
- recursive process - characterized by a chain of deferred operations
- linear recursive process - length of the chain of deferred multiplications, and hence the amount of information needed to keep track of it, grows linearly with n 
- iterative process - summarized by a fixed number of state variables
- recursive process vs. recursive procedure
    - A recursive procedure doesn't necessarily have a recursive process, it can be an iterative process. This is known as tail-recursive.
    - Scheme is able to execute an iterative process in constant space, even if the iterative process is described by a recursive procedure.
