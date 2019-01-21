# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Interview.create(name: "Software Engineer - Round 1")
Interview.create(name: "Software Engineer - Round 2")
Interview.create(name: "Senior Software Engineer - Round 1")
Interview.create(name: "Senior Software Engineer - Round 1")
Interview.first.test_skills.create(name: "Ruby")
Interview.first.test_skills.create(name: "Rails")
Interview.first.test_skills.create(name: "Javascript")
Interview.first.test_skills.create(name: "HTML")
a = Interview.first.test_results.create(candidate_name: "John Doe")
a.test_scores.create(test_skill: TestSkill.first, score: 7)
a.test_scores.create(test_skill: TestSkill.second, score: 6)
a.test_scores.create(test_skill: TestSkill.third, score: 8)
a.test_scores.create(test_skill: TestSkill.fourth, score: 6)

b = Interview.first.test_results.create(candidate_name: "Tom Sawyer")
b.test_scores.create(test_skill: TestSkill.first, score: 4)
b.test_scores.create(test_skill: TestSkill.second, score: 5)
b.test_scores.create(test_skill: TestSkill.third, score: 8)
b.test_scores.create(test_skill: TestSkill.fourth, score: 6)

c = Interview.first.test_results.create(candidate_name: "Donald Trump")
c.test_scores.create(test_skill: TestSkill.first, score: 3)
c.test_scores.create(test_skill: TestSkill.second, score: 2)
c.test_scores.create(test_skill: TestSkill.third, score: 2)
c.test_scores.create(test_skill: TestSkill.fourth, score: 4)

