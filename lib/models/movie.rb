# encoding: utf-8

class Movie

  include PlainRecord::Resource

  list_in 'movies.yml'

  field :id
  field :title
  field :stars
  field :year
  field :audioChannels
  field :audioCodec
  field :bonusNumber
  field :bonusTitle
  field :cdNumber
  field :cdNumberTotal
  field :date
  field :edition
  field :filmNumber
  field :format
  field :idNumber
  field :language
  field :other
  field :releaseGroup
  field :screenSize
  field :subtitleLanguage
  field :videoApi
  field :videoCodec
  field :website

end
