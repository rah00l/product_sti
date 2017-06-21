require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
      described_class.new(name: "New Product", price: "102.34",
                        status: true, inward_date: DateTime.now,
                        type: 'Pen', description: 'This is new product launched!!' )
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a status" do
      subject.status = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a inward_date" do
      subject.inward_date = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a type" do
      subject.type = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a description" do
      subject.description = nil
      expect(subject).to_not be_valid
    end
end
