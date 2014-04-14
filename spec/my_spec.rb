
require 'spec_helper'

describe User do

  it { should have_many :questions }
  it { should have_many :answers }
  it { should have_many :votes }

  it { should have_secure_password }
  it { should validate_presence_of :name }
  # it { should validate_uniqueness_of :email }
  it { should validate_presence_of :email }
  # it { should validate_presence_of :password }
  # it { should validate_presence_of :password_confirmation }
end

describe Question do
  it { should belong_to :user }
  it { should have_many :votes }
  it { should have_many :answers }
end

describe Answer do
  it { should belong_to :user }
  it { should belong_to :question }
  it { should have_many :votes }
end

describe Vote do
  it { should belong_to :user }
  # it { should belong_to :votable}
end
