require "./hash_checker"

describe HashChecker do
    describe "#is_injective" do
        before do
            @surjective = { 3 => 7, 4 => 9, 5 => 10, 7 => 2, 22 => 7 }
            @surjective_checker = HashChecker.new(@surjective)

            @injective = { 7 => 0, 9 => 3, 12 => 5, 10 => 1}
            @injective_checker = HashChecker.new(@injective)
        end

        it "returns false when a hash is not injective" do
            expect(@surjective_checker.is_injective).to be false
        end

        it "returns true when a hash is injective" do
            expect(@injective_checker.is_injective).to be true
        end

    end
end