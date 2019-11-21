class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :Title
      t.string :Year
      t.string :Rated
      t.string :Released
      t.string :Runtime
      t.string :Genre
      t.string :Director
      t.string :Writer
      t.string :Actors
      t.string :Plot
      t.string :Language
      t.string :Country
      t.string :Awards
      t.string :Poster
      t.string :Metascore
      t.string :imdbRating
      t.string :imdbVotes
      t.string :imdbID
      t.string :Type
      t.string :DVD
      t.string :BoxOffice
      t.string :Production
      t.string :Website
      t.string :totalSeasons
      t.string :Response

      t.timestamps
    end
  end
end
