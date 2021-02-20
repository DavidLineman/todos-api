require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  # ensure User mode has 1:m relationship with the Todo model
  it { should have_many(:todos) }
  # Validation tests
  # ensure name, email and pasword_digest are present before save
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:pasword_digest) }
end
