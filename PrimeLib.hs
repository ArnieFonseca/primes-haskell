module PrimeLib  (getPrimes)  where


    -- | Get all primes
    -- > e.g.; getPrimes [2,3,4,5,6,7,8,9] = [2,3,5,7]
    getPrimes :: [Integer]  -> [Integer]
    getPrimes nums = getPrimesAux nums [] 
            
    -- | Get all primes recursively helper
    getPrimesAux :: [Integer] -> [Integer] -> [Integer]
    getPrimesAux [] rst = rst 
    getPrimesAux nums rst = getPrimesAux a b
        where
            a = removeFactors nums
            b = appendPrime nums rst

    -- | Reduce the list by eliminating the factors of the head 
    removeFactors ::  [Integer] -> [Integer]
    removeFactors lst =
        filter (\x -> isNotDivisible x first) lst
        where 
            first:: Integer
            first = head lst                  -- Get the first element

            isNotDivisible :: Integer -> Integer -> Bool
            isNotDivisible p q = 
                mod p q /= 0                  -- When Not Divisible

    -- | Add the new primer number to the list
    appendPrime :: [Integer] -> [Integer] -> [Integer]
    appendPrime lst rst = 
        rst ++ [head lst]                     -- Add to the End
 