require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

RSpec.describe "average" do
  it "returns 99 for a list of grades [100, 98]" do
    expect(average([100, 98])).to eq(99)
  end
end

RSpec.describe "rankings" do
  it "returns a numbered list of students" do
    expect(rankings(["Sally", "Suzie"])).to eq("1. Sally\n2. Suzie\n")
  end
end

RSpec.describe "greet" do
  it "returns ""Hi Andy!"" for name of Andy and no language input" do
    expect(greet("Andy")).to eq("Hi Andy!")
  end

  it "returns ""Hola Veronica!"" for name Veronica and language spanish" do
    expect(greet("Veronica", "spanish")).to eq("Hola Veronica!")
  end

  it "returns ""Ciao Bella!"" for name Bella and language italian" do
    expect(greet("Bella", "italian")).to eq("Ciao Bella!")
  end

  it "returns ""Bonjour Francois!"" for name Francois and language french" do
    expect(greet("Francois", "french")).to eq("Bonjour Francois!")
  end
end

RSpec.describe "create_puzzle" do
  it "returns _ a _ _ _ for word party and guesses a" do
    expect(create_puzzle("party", ["a"])).to eq("_ a _ _ _")
  end

  it "returns _ _ _ _ _ for word party and no guesses" do
    expect(create_puzzle("party")).to eq("_ _ _ _ _")
  end

  it "returns p a r t y for word party and guesses p, a, r, t, and y" do
    expect(create_puzzle("party", ["p", "a", "r", "t", "y"])).to eq("p a r t y")
  end

  it "returns p a r t y for word party and guesses p, a, r, t, y, and f" do
    expect(create_puzzle("party", ["p", "a", "r", "f", "t", "y"])).to eq("p a r t y")
  end

  it "returns _ _ _ _ _ for word party and guess f" do
    expect(create_puzzle("party", ["f"])).to eq ("_ _ _ _ _")
  end
end

RSpec.describe "divisible_by_three" do
  it "returns true for input 3" do
    expect(divisible_by_three(3)).to eq(true)
  end

  it "returns false for input 4" do
    expect(divisible_by_three(4)).to eq(false)
  end

  it "returns true for input 99" do
    expect(divisible_by_three(99)).to eq(true)
  end
end

RSpec.describe "perfect_square?" do
  it "returns an error for input 0" do
    expect{perfect_square?(0)}.to raise_error(ArgumentError)
  end

  it "returns true for input 4" do
    expect(perfect_square?(4)).to eq(true)
  end

  it "returns false for input 13" do
    expect(perfect_square?(13)).to eq(false)
  end
end
