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
    expect(get_full_word(100)).to eq('hundred')
    #expect(get_word(130)).to eq('hundred thirty')
    #expect(get_word(200)).to eq('two hundred')
  end
end
