require 'spec_helper'
require_relative '../arabic2english'

describe "arabic2english" do

  it "should reply 'one'" do
    expect(get_full_word(1)).to eq('one')
  end

  it "should reply 'two'" do
    expect(get_full_word(2)).to eq('two')
  end

  it "should reply 'five'" do
    expect(get_full_word(5)).to eq('five')
  end

  it "should reply 'eleven'" do
    expect(get_full_word(11)).to eq('eleven')
  end

  it "should reply 'twenty'" do
    expect(get_full_word(20)).to eq('twenty')
  end

  it "should reply 'twenty one'" do
    expect(get_full_word(21)).to eq('twenty one')
  end

  it "should reply 'thirty one'" do
    expect(get_full_word(31)).to eq('thirty one')
  end

  it "should reply 'fourty one'" do
    expect(get_full_word(41)).to eq('fourty one')
  end

  it "should reply 'ninety one'" do
    expect(get_full_word(91)).to eq('ninety one')
  end

  it "should reply 'ninety five'" do
    expect(get_full_word(95)).to eq('ninety five')
  end

  it "should reply 'one hundred'" do
    expect(get_full_word(100)).to eq('one hundred')
  end

  it "should reply 'one hundred thirty'" do
    expect(get_full_word(130)).to eq('one hundred thirty')
  end

  it "should reply 'one hundred ninety nine'" do
    expect(get_full_word(199)).to eq('one hundred ninety nine')
  end

  it "should reply 'two hundred'" do
    expect(get_full_word(200)).to eq('two hundred')
  end

  it "should reply 'two hundred fifty'" do
    expect(get_full_word(250)).to eq('two hundred fifty')
  end

  it "should reply 'one thousand'" do
    expect(get_full_word(1000)).to eq('one thousand')
  end

  it "should reply 'two thousand'" do
    expect(get_full_word(2000)).to eq('two thousand')
  end

  it "should reply 'nine thousand nine hundred ninety nine'" do
    expect(get_full_word(9999)).to eq('nine thousand nine hundred ninety nine')
  end

  it "should reply 'twenty three thousand'" do
    expect(get_full_word(23000)).to eq('twenty three thousand')
  end

  it "should reply 'one lakhs'" do
    expect(get_full_word(100000)).to eq('one lakhs')
  end

  it "should reply 'one lakhs one'" do
    expect(get_full_word(100001)).to eq('one lakhs one')
  end

  it "should reply 'one lakhs twenty three thousand four hundred fifty six'" do
    expect(get_full_word(123456)).to eq('one lakhs twenty three thousand four hundred fifty six')
  end

  it "should reply 'one crore'" do
    expect(get_full_word(10000000)).to eq('one crore')
  end

  it "should reply 'nine crore ninety nine lakhs ninety nine thousand nine hundred ninety nine'" do
    expect(get_full_word(99999999)).to eq('nine crore ninety nine lakhs ninety nine thousand nine hundred ninety nine')
  end

end
