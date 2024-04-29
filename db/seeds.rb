# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!([
  {
    title: 'Oppenheimer',
    description:
    %{
      The story of J. Robert Oppenheimer’s role in the development of the atomic bomb during World War II.
    }.squish,
    released_on: "2023-07-17",
    rating: 'PG-13',
    total_gross: 971_400_000
  },
  {
    title: 'Interstellar',
    description:
    %{
      The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.
    }.squish,
    released_on: "2014-10-26",
    rating: 'PG-13',
    total_gross: 733_000_000
  },
  {
    title: 'her',
    description:
    %{
      This unconventional love story blends science fiction and romance in a sweet tale that explores the nature of love and the ways that technology isolates and connects us all.
    }.squish,
    released_on: "2013-12-18",
    rating: 'R',
    total_gross: 23_000_000
  },
  {
    title: 'The Iron Claw',
    description:
    %{
      The true story of the inseparable Von Erich brothers, who made history in the intensely competitive world of professional wrestling in the early 1980s. Through tragedy and triumph, under the shadow of their domineering father and coach, the brothers seek larger-than-life immortality on the biggest stage in sports.
    }.squish,
    released_on: "2023-11-08",
    rating: 'PG-13',
    total_gross: 44_200_000
  },
  {
    title: 'Midsommar',
    description:
    %{
      Several friends travel to Sweden to study as anthropologists a summer festival that is held every ninety years in the remote hometown of one of them. What begins as a dream vacation in a place where the sun never sets, gradually turns into a dark nightmare as the mysterious inhabitants invite them to participate in their disturbing festive activities.
    }.squish,
    released_on: "2019-06-18",
    rating: 'R',
    total_gross: 48_000_000
  },
  {
    title: 'The Whale',
    description:
    %{
      A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.
    }.squish,
    released_on: "2022-12-09",
    rating: 'R',
    total_gross: 17_200_000
  },
  {
    title: 'Inception',
    description:
    %{
      Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: “inception”, the implantation of another person’s idea into a target’s subconscious.
    }.squish,
    released_on: "2010-07-13",
    rating: 'PG-13',
    total_gross: 292_600_000
  }
])
