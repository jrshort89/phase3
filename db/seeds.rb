# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Repository.destroy_all
Document.destroy_all
Version.destroy_all

repo = Repository.find_or_create_by(name: "jake-repo", branch: "master")

documentJS = Document.find_or_create_by(name: "script.js", commit_id: nil, repository_id: repo.id, user_id: nil)
documentHTML = Document.find_or_create_by(name: "index.html", commit_id: nil, repository_id: repo.id, user_id: nil)
documentCSS = Document.find_or_create_by(name: "style.css", commit_id: nil, repository_id: repo.id, user_id: nil)

versionJS1 = Version.find_or_create_by(content: "JS", stage: "1", document_id: documentJS.id)
versionJS2 = Version.find_or_create_by(content: "JS", stage: "1", document_id: documentJS.id)
versionJS3 = Version.find_or_create_by(content: "JS", stage: "1", document_id: documentJS.id)

versionHTML1 = Version.find_or_create_by(content: "HTML", stage: "2", document_id: documentHTML.id)
versionHTML2 = Version.find_or_create_by(content: "HTML", stage: "2", document_id: documentHTML.id)
versionHTML3 = Version.find_or_create_by(content: "HTML", stage: "2", document_id: documentHTML.id)

versionCSS1 = Version.find_or_create_by(content: "CSS", stage: "2", document_id: documentCSS.id)
versionCSS2 = Version.find_or_create_by(content: "CSS", stage: "2", document_id: documentCSS.id)
versionCSS3 = Version.find_or_create_by(content: "CSS", stage: "2", document_id: documentCSS.id)