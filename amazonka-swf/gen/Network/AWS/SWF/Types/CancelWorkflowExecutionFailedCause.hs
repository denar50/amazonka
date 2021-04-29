{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
  ( CancelWorkflowExecutionFailedCause
      ( ..,
        CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED,
        CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CancelWorkflowExecutionFailedCause = CancelWorkflowExecutionFailedCause'
  { fromCancelWorkflowExecutionFailedCause ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED :: CancelWorkflowExecutionFailedCause
pattern CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED = CancelWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION :: CancelWorkflowExecutionFailedCause
pattern CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION = CancelWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

{-# COMPLETE
  CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED,
  CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION,
  CancelWorkflowExecutionFailedCause'
  #-}
