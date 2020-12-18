# frozen_string_literal: true

require_relative '../lib/quotes'

describe Quotes do
  context '#initialize' do
    let(:value) { Quotes.new }
    it 'displays the quote of the day' do
      expect(value.value).to_s
    end
  end

  context 'select_quote' do
    let(:value) { Quotes.new }
    it 'select a random quote to display to the user' do
      expect(value.select_quote(value)).to_s
    end
  end
end
