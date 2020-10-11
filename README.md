# Bell numbers

Some functions for generating Bell numbers (https://en.wikipedia.org/wiki/Bell_number, https://oeis.org/A000110).

`bellNumber n` will provide the nth Bell number. `bellRow n` will provide the nth row in a Bell triangle.

The *n*th Bell number is the number of ways in which a set of *n* elements can be partitioned.

I'm sure there are more efficient ways to generate Bell numbers. Beyond 15, the slowness of `bellNumber` becomes apparent. Don't bother with numbers greater than 30 -- it'll be minutes before the computation finishes.
