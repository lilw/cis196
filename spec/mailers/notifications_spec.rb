require "spec_helper"

describe Notifications do
  describe "new_home" do
    let(:mail) { Notifications.new_home }

    it "renders the headers" do
      mail.subject.should eq("New home")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
