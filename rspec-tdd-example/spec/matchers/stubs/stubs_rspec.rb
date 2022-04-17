require 'student'
require 'course'

# force a response of a method, it uses the real classes insted of double
RSpec.describe 'Stubs' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
    finished_course = student.has_finished?(course)
    expect(finished_course).to be_truthy
  end
end