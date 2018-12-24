class HashChecker
    def initialize(target_hash)
        @target_hash = target_hash
    end

    def is_injective
        @target_hash.each_value do |target_value|
            match_count = 0
            @target_hash.each_value do |inner_value|
                if inner_value == target_value
                    match_count += 1
                end
                return false if match_count > 1
            end
        end
        return true
    end

end