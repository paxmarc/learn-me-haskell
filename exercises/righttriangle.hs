-- Want to find a right triangle that fits all these conditions:
--  - The lengths of three sides are all integers.
--  - The length of each side is less than or equal to 10.
--  - The triangle's perimeter is equal to 24.

-- We could try generating all possible triples with elements that are less than or equal to 10:

triples = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10] ]

-- And then further refine this so that a^2 + b^2 = c^2, a property of right triangles:

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10], a^2 + b^2 == c^2 ]

-- That list comprehension above will only return valid right triangles. Now we just need to ensure
-- that the sides equal 24:

rightTriangles' = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a],
                    a^2 + b^2 == c^2,
                    a + b + c == 24 ]
