# encoding: utf-8

require 'spec_helper'
require 'app/version'

describe App::Version do
  it 'should return the version with get method' do
    expect(described_class.get).to eq('0.0.0')
  end
end
