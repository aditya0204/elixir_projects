defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Everything starts from here
  """

  def main()do
    create_deck
    |>shuffle
    |>deal(2)
  end


  @doc """
  Creates the deck of cards
  """
   def create_deck() do
     values = ["one","two","three","four"]
     suits =  ["spades","clubs", "diamonds", "hearts" ]

     for v<-values,s<-suits do
       "#{v} of #{s}"
     end

  end

  @doc """
  Shuffles the cards.
  """

  def shuffle(deck)do
    Enum.shuffle(deck)
  end


   @doc """
   Create the hand of cards.
   """


  def deal(deck,hand_size) do
    Enum.split(deck,hand_size)
  end

end
