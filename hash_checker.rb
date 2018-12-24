class HashChecker
    def initialize(target_hash)
        @target_hash = target_hash
    end

    def is_injective
       @original_values_length = @target_hash.values.length
       @deduped_values_length = @target_hash.values.uniq.length
       return @original_values_length == @deduped_values_length
    end

end