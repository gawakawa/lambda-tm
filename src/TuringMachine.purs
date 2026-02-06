module TuringMachine where

import Prelude

import Data.List (List(..))

data Direction = L | R | S

data Tape a = Tape (List a) a (List a)

data TM state symbol = TM
  { transition :: state -> symbol -> { write :: symbol, move :: Direction, next :: state }
  , initial :: state
  , accept :: state -> Boolean
  }

step :: forall s a. TM s a -> Tape a -> s -> { tape :: Tape a, state :: s }
step = todo

run :: forall s a. TM s a -> Tape a -> Boolean
run = todo

todo :: forall a. a
todo = todo
