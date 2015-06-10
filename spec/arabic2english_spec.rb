require 'spec_helper'
require_relative '../arabic2english'

describe "arabic2english" do

  it "" do
    expect(get_full_word(1)).to eq('one')
    expect(get_full_word(2)).to eq('two')
    expect(get_full_word(5)).to eq('five')
    expect(get_full_word(11)).to eq('eleven')
    expect(get_full_word(20)).to eq('twenty')
    expect(get_full_word(21)).to eq('twenty one')
    expect(get_full_word(31)).to eq('thirty one')
    expect(get_full_word(41)).to eq('fourty one')
    expect(get_full_word(91)).to eq('ninety one')
    expect(get_full_word(95)).to eq('ninety five')
    expect(get_full_word(100)).to eq('one hundred')
    expect(get_full_word(130)).to eq('one hundred thirty')
    expect(get_full_word(199)).to eq('one hundred ninety nine')
    expect(get_full_word(200)).to eq('two hundred')
    expect(get_full_word(250)).to eq('two hundred fifty')
    expect(get_full_word(1000)).to eq('one thousand')
    expect(get_full_word(2000)).to eq('two thousand')
    expect(get_full_word(9999)).to eq('nine thousand nine hundred ninety nine')
    expect(get_full_word(23000)).to eq('twenty three thousand')
    expect(get_full_word(100000)).to eq('one lakhs')
    expect(get_full_word(100001)).to eq('one lakhs one')
    expect(get_full_word(123456)).to eq('one lakhs twenty three thousand four hundred fifty six')
    expect(get_full_word(10000000)).to eq('one crore')
    expect(get_full_word(99999999)).to eq('nine crore ninety nine lakhs ninety nine thousand nine hundred ninety nine')
  end
end
