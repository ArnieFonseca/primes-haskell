module Main where

    import PrimeLib
    
    -- | List of sequential number starting from two
    numbers :: [Integer]
    numbers = [2..20]


    {- Entry Point -}
    main::IO()
    main = do

        print "All all number"
        print numbers

        
        let primes = getPrimes numbers :: [Integer]

        print "Primes only"
        print primes

        print "Done"