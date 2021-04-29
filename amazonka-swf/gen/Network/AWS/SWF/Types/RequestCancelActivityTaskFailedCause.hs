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
-- Module      : Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
  ( RequestCancelActivityTaskFailedCause
      ( ..,
        RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN,
        RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RequestCancelActivityTaskFailedCause = RequestCancelActivityTaskFailedCause'
  { fromRequestCancelActivityTaskFailedCause ::
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

pattern RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN :: RequestCancelActivityTaskFailedCause
pattern RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN = RequestCancelActivityTaskFailedCause' "ACTIVITY_ID_UNKNOWN"

pattern RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED :: RequestCancelActivityTaskFailedCause
pattern RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED = RequestCancelActivityTaskFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN,
  RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED,
  RequestCancelActivityTaskFailedCause'
  #-}
