module Dec01
    using DelimitedFiles

    export puzzle1

    function puzzle1()
        freqs = readdlm("data/01_1.input")

        sum(freqs)

    end

    function puzzle2()
        freqs = readdlm("data/01_1.input")
        freqs_seen = Float64[]
        curr_freq = 0        
        whilecount = 0

        while true
            println(whilecount) 

            for f in freqs
                if curr_freq in freqs_seen
                    return curr_freq
                end

                append!(freqs_seen, curr_freq)
                curr_freq = curr_freq + f
            end
            
            whilecount += 1
        
        end

    end





end 