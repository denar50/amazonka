{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CloudWatchLogsDestinationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CloudWatchLogsDestinationDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration details of the CloudWatch Logs destination.
--
-- /See:/ 'newCloudWatchLogsDestinationDetails' smart constructor.
data CloudWatchLogsDestinationDetails = CloudWatchLogsDestinationDetails'
  { -- | The name of the CloudWatch Logs log group.
    logGroup :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchLogsDestinationDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logGroup', 'cloudWatchLogsDestinationDetails_logGroup' - The name of the CloudWatch Logs log group.
newCloudWatchLogsDestinationDetails ::
  CloudWatchLogsDestinationDetails
newCloudWatchLogsDestinationDetails =
  CloudWatchLogsDestinationDetails'
    { logGroup =
        Prelude.Nothing
    }

-- | The name of the CloudWatch Logs log group.
cloudWatchLogsDestinationDetails_logGroup :: Lens.Lens' CloudWatchLogsDestinationDetails (Prelude.Maybe Prelude.Text)
cloudWatchLogsDestinationDetails_logGroup = Lens.lens (\CloudWatchLogsDestinationDetails' {logGroup} -> logGroup) (\s@CloudWatchLogsDestinationDetails' {} a -> s {logGroup = a} :: CloudWatchLogsDestinationDetails)

instance
  Core.FromXML
    CloudWatchLogsDestinationDetails
  where
  parseXML x =
    CloudWatchLogsDestinationDetails'
      Prelude.<$> (x Core..@? "LogGroup")

instance
  Prelude.Hashable
    CloudWatchLogsDestinationDetails

instance
  Prelude.NFData
    CloudWatchLogsDestinationDetails

instance
  Core.ToQuery
    CloudWatchLogsDestinationDetails
  where
  toQuery CloudWatchLogsDestinationDetails' {..} =
    Prelude.mconcat ["LogGroup" Core.=: logGroup]
