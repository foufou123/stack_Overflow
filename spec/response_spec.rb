require 'spec_helper'

describe Response do

  it { should have_many(:users).through(:votes) }

end
