require "rails_helper"

RSpec.describe National_park do
  it "considers a project with no tasks to be done" do
    project = National_park.new
    expect(project.done?).to be_truthy
  end
end