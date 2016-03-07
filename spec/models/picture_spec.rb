RSpec.describe Picture, type: :model do
  it { should validate_presence_of :data_url }
end
