require "spec_helper"

RSpec.describe Lita::Handlers::Compliment, :lita_handler => true do
  let(:robot) { Lita::Robot.new(registry) }

  subject { described_class.new(robot) }

  describe "#compliment" do
    it { is_expected.to route("Lita compliment Andy") }
    it { is_expected.to route("Lita compliment @andy") }

    it "responses to names that are not mentions" do
      send_message("Lita compliment Andy")
      expect(replies.last).to match(/Andy you are a (\w+\s)(\w+\s)(\w+\s*)/)
    end

    it "responses to mentions" do
      send_message("Lita compliment @andy")
      expect(replies.last).to match(/<@andy> you are a (\w+\s)(\w+\s)(\w+\s*)/)
    end
  end
end
