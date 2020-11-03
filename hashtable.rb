class Hashtable

    def initialize
        @table = Array.new(9122,nil)
    end
    
    def calculate_hash_value string
        value = string[0].ord * 100 + string[1].ord
        value
    end

    def store string
        hash_value = calculate_hash_value(string)
        if @table[hash_value] != nil
            @table[hash_value].append(string)
        else
            @table[hash_value] = [string]
        end
    end

    def lookup string
        hash_value = calculate_hash_value(string)
        if @table[hash_value] != nil
            if @table[hash_value].include?(string)
                return hash_value
            end
        end
        "String not found"
    end
end