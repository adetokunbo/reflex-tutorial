{-# LANGUAGE CPP #-}
{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE OverloadedStrings #-}
module Ex10.Exercise where

import Control.Monad.Fix (MonadFix)

import Data.Text (Text)
import qualified Data.Map as Map

import Reflex
import Reflex.Dom.Core

#ifndef ghcjs_HOST_OS
import Util.Run
#endif

import Ex10.Common
import Ex10.Run

mkStock ::
  ( Reflex t
  , MonadHold t m
  , MonadFix m
  ) =>
  Int ->
  Product ->
  Event t Text ->
  m (Dynamic t Stock)
mkStock =
  error "TODO"

ex10 ::
  ( MonadWidget t m
  ) =>
  Inputs t ->
  m (Event t Text)
ex10 (Inputs dCarrot dCelery dCucumber dSelected) = mdo
  let
    eVend =
      never

  pure eVend

#ifndef ghcjs_HOST_OS
go ::
  IO ()
go =
  run $
    host mkStock ex10
#endif
