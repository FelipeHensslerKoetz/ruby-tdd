describe 'Comparation Methods' do
  it '>' do
    expect(1).to be > 0
  end

  it '>=' do
    expect(1).to be >= 0
  end

  it '<' do
    expect(0).to be < 1
  end

  it '<=' do
    expect(0).to be <= 1
  end

  it 'be_between inclusive' do
    expect(1).to be_between(1, 10).inclusive
  end

  it 'be_between exclusive' do
    expect(1).not_to be_between(1, 10).exclusive
  end

  it 'match' do
    expect('name@gmail.com').to match(/..@../)
  end

  it 'start_with' do
    expect('my name is...').to start_with('my')
    expect(['my', 'name', 'is', '...']).to start_with('my')
  end

  it 'end_with' do
    expect('my name is...').to end_with('...')
    expect(['my', 'name', 'is', '...']).to end_with('...')
  end
end
