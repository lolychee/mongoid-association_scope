# frozen_string_literal: true

RSpec.describe Mongoid::AssociationScope::Options do
  subject { Mongoid::Relations::Options }

  describe ".validate!" do
    it "support :scope option" do
      expect(subject.validate!({relation: Mongoid::Relations::Referenced::One, scope: -> {}}))
    end
  end
end
