# Daedalus
## Slices

Let $S,T$ be Slices, $T \subset S$ then:
- $(\exist X:slice \mid S\ merge\ X) \implies (\exist Y:slice \mid T\ merge\ Y)$
<!-- - $T\ dont\ merge \implies S\ dont\ merge$ (contrapositive) -->
<!-- - $T\ merge \not\implies S\ merge$ (not a iff) -->
<!-- - $S\ dont\ merge \not \implies T\ dont\ merge$ (contrapositive) -->
< *Is not a double implication* >
<hr>

### Merge two slices and replace calls
#### Original:
``` llvm
    define dso_local i32 @f(i32 noundef %arg) #0 {
    entry:
      %mul = mul nsw i32 %arg, %arg
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // T

      %mul4 = mul nsw i32 %mul3, 2 
      %mul5 = mul nsw i32 %mul4, 2 // S
      ret i32 %mul5
    }

    define dso_local i32 @g(i32 noundef %argc) #0 {
    entry:
      %mul = mul nsw i32 %argc, %argc
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // mT
      ret i32 %mul3
    }

```
### Step 1 - Outlining all slices
``` llvm
    define dso_local i32 @f(i32 noundef %arg) #0 {
    entry:
      %mul = mul nsw i32 %arg, %arg
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2
      %callmul3 = call(Slice_f_mul3) // New Call

      %mul4 = mul nsw i32 %callmul3, 2 // Uses of mul3 become callmul3  
      %mul5 = mul nsw i32 %mul4, 2 
      %callmul5 = call(Slice_f_mul5) // New Call
      ret i32 %mul5
    }

    define dso_local i32 @g(i32 noundef %argc) #0 {
    entry:
      %mul = mul nsw i32 %argc, %argc
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // mT
      %callmul3 = call(Slice_g_mul3) // New Call
      ret i32 %mul3
    }

    define dso_local i32 @slice_f_mul3(i32 noundef %arg) #0 {
    entry:
      %mul = mul nsw i32 %arg, %arg
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // T
      ret i32 %mul3
    }
    define dso_local i32 @slice_g_mul3(i32 noundef %argc) #0 {
    entry:
      %mul = mul nsw i32 %argc, %argc
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // mT
      ret i32 %mul3
    }
    define dso_local i32 @slice_f_mul5(i32 noundef %arg) #0 {
    entry:
      %mul3 = call(Slice_f_mul3)

      %mul4 = mul nsw i32 %mul3, 2 
      %mul5 = mul nsw i32 %mul4, 2 // S
      ret i32 %mul5
    }
```
### Step 2 - Merge
``` llvm
define dso_local i32 @f(i32 noundef %arg) #0 {
    entry:
      %mul = mul nsw i32 %arg, %arg
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2
      %callmul3 = call(Slice_g_mul3) // New Call

      %mul4 = mul nsw i32 %callmul3, 2 // Uses of mul3 become callmul3  
      %mul5 = mul nsw i32 %mul4, 2 
      %callmul5 = call(Slice_f_mul5) // New Call
      ret i32 %mul5
    }

    define dso_local i32 @g(i32 noundef %argc) #0 {
    entry:
      %mul = mul nsw i32 %argc, %argc
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // mT
      %callmul3 = call(Slice_g_mul3) // New Call
      ret i32 %mul3
    }

    define dso_local i32 @slice_g_mul3(i32 noundef %argc) #0 {
    entry:
      %mul = mul nsw i32 %argc, %argc
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // mT
      ret i32 %mul3
    }
    define dso_local i32 @slice_f_mul5(i32 noundef %arg) #0 {
    entry:
      %mul3 = call(Slice_g_mul3)

      %mul4 = mul nsw i32 %mul3, 2 
      %mul5 = mul nsw i32 %mul4, 2 // S
      ret i32 %mul5
    }
```
### Step 3 - Removing
- Instructions that have no uses besides on slices.
- Functions and calls that dont merge
``` llvm

define dso_local i32 @f(i32 noundef %arg) #0 {
    entry:
      %callmul3 = call(Slice_g_mul3) // New Call

      %mul4 = mul nsw i32 %callmul3, 2 // Uses of mul3 become callmul3  
      %mul5 = mul nsw i32 %mul4, 2 
      ret i32 %mul5
    }

    define dso_local i32 @g(i32 noundef %argc) #0 {
    entry:
      %callmul3 = call(Slice_g_mul3) // New Call
      ret i32 %mul3
    }

    define dso_local i32 @slice_g_mul3(i32 noundef %argc) #0 {
    entry:
      %mul = mul nsw i32 %argc, %argc
      %mul1 = mul nsw i32 %mul, 2
      %mul2 = mul nsw i32 %mul1, 2
      %mul3 = mul nsw i32 %mul2, 2 // mT
      ret i32 %mul3
    }

```


On work:
- If no limit of "size" of slice so too many calls
- If set a limit, all sub-slices have calls may not be true, and if it have some
use besides the slice, we going to have duplicated instructions. Ex: test34

*inlining solves nested calls*
