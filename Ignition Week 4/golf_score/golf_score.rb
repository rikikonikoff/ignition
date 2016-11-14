scores = [
  {
    name: "Hole 1",
    par: 5,
    score: 7
  },
  {
    name: "Hole 2",
    par: 4,
    score: 5
  },
  {
    name: "Hole 3",
    par: 3,
    score: 3
  },
  {
    name: "Hole 4",
    par: 4,
    score: 4
  },
  {
    name: "Hole 5",
    par: 4,
    score: 4
  },
  {
    name: "Hole 6",
    par: 3,
    score: 2
  },
  {
    name: "Hole 7",
    par: 4,
    score: 5
  },
  {
    name: "Hole 8",
    par: 5,
    score: 5
  },
  {
    name: "Hole 9",
    par: 4,
    score: 5
  },
  {
    name: "Hole 10",
    par: 5,
    score: 7
  },
  {
    name: "Hole 11",
    par: 4,
    score: 4
  },
  {
    name: "Hole 12",
    par: 4,
    score: 4
  },
  {
    name: "Hole 13",
    par: 3,
    score: 3
  },
  {
    name: "Hole 14",
    par: 4,
    score: 5
  },
  {
    name: "Hole 15",
    par: 4,
    score: 5
  },
  {
    name: "Hole 16",
    par: 4,
    score: 4
  },
  {
    name: "Hole 17",
    par: 3,
    score: 3
  },
  {
    name: "Hole 18",
    par: 5,
    score: 6
  }
]


strokes = 0
total_par = 0
scores.each do |hole|
  strokes += hole[:score]
  total_par += hole[:par]
end
over = strokes - total_par
puts "Total Strokes: #{strokes}"
puts "Total Par: #{total_par}"
puts "You were #{over} strokes over par."
