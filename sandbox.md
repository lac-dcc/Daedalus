
# Removing Instructions

- Only can remove a instruction, if its on slice and all users can be removed.

Ex:
slice = {v1, v2, v3, v4}
v1 -> {v2, v3}
v2 -> {v4}
v3 -> {v5}
v4 -> {}
$\mu a$
- v1 cant be removed, since v2 and v3 must to be removed, but v3 have an user that is not in the slice (v5). So v3 cant be removed and is a user of v1, so v1 cant be removed too.

## Removing loops
For \n \I instruction on \S slice, it have \m \U users.

I0 -> {U0, (true|false)}, {U1, (true|false)}, ... {Um, (true|false)};
I1 -> {U0, (true|false)}, {U1, (true|false)}, ... {Um, (true|false)};
...
In -> {U0, (true|false)}, {U1, (true|false)}, ... {Um, (true|false)};


