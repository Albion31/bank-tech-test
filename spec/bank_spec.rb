require "Bank"

describe Bank do

  describe "#Deposit" do
    it "should let a user make a deposit" do
     expect(subject.deposit(1000)).to eq(subject.balance)
    end
  end

  describe "#Withdrawal" do
    it "should let a user make a withdrawal" do
      subject.deposit(1000)
     expect{subject.withdrawal(50)}.to change{subject.balance}.by (-50)
    end
  end

end
