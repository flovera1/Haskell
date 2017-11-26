type Set a = a -> Bool

member :: Set a -> a -> Bool
member c a = c a

empty:: Set a
empty _ = False

singleton :: (Eq a) => a -> Set a
singleton a = (\x -> x == a)

fromList :: (Eq a) => [a] -> Set a
fromList xs = (\a -> elem a xs)

comp :: Set a -> Set a
comp Set = (\ y -> not $ Set y)

union:: Set a -> Set a -> Set a
union a b = (\x -> a x || b x)

intersec :: Set a -> Set a -> Set a
intersec p s = (\ x -> member p x && member s x)

transform :: (b -> a)->Set a -> Set b
transform f c = (\ x -> c (f x))