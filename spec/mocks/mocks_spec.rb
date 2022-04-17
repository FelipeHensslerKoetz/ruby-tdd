# frozen_string_literal: true

require 'student'

RSpec.describe 'Mocks' do
  it '#has_finished?' do
    student = Student.new
    expect(student).to receive(:foo)
    student.foo
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with('bar')
    student.foo('bar')
  end

  it 'many times' do
    student = Student.new
    expect(student).to receive(:foo).with('bar').twice
    # expect(student).to receive(:foo).with('bar').exactly(2).times
    # expect(student).to receive(:foo).with('bar').at_least(:twice)
    # expect(student).to receive(:foo).with('bar').at_least(2).times

    student.foo('bar')
    student.foo('bar')
  end

  it 'With return' do
    student = Student.new
    expect(student).to receive(:foo).with('bar').once.and_return('any value')
    student.foo('bar')
  end
end
