# frozen_string_literal: true

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

  it 'Dynamic Arguments' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      case arg
      when :hello
        'world!'
      when :hi
        'bye!'
      end

      expect(student.foo('hello')).to eq('world!')
      expect(student.foo('hi')).to eq('bye!')
    end
  end

  it 'Allow any instance of' do
    student = Student.new

    allow_any_instance_of(Student).to receive(:foo).and_return(:bar)

    expect(student.foo).to eq(:bar)
    expect(student.foo).to eq(:bar)
  end

  it 'Errors' do
    student = Student.new
    allow(student).to receive(:foo).and_raise(RuntimeError)

    expect { student.foo }.to raise_error(RuntimeError)
  end
end
