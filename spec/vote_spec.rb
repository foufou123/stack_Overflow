require 'spec_helper'

describe Vote do
  it { should belong_to :response}
  it {should belong_to :user}
end
