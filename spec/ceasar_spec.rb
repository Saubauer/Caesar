require './ceasar'

describe "#caesar_cipher" do
    it "Just works" do
        expect(caesar_cipher("ABC", 1)).to eql("BCD")
      end

      it "Works with negatives" do
        expect(caesar_cipher("ABC", -1)).to eql("ZAB")
      end
      it "Works with more than 26" do
        expect(caesar_cipher("ABC", 27)).to eql("BCD")
      end
      it "Works with less than 26" do
        expect(caesar_cipher("ABC", -27)).to eql("ZAB")
      end
      it "Return nil when no string" do
        expect(caesar_cipher(1, 1)).to eql(nil)
      end
      it "Return nil when count is wrong" do
        expect(caesar_cipher("ABC", "1")).to eql(nil)
      end
end
