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
-- Module      : Network.AWS.Panorama.Types.Job
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.Job where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A job for a device.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job'
  { -- | The job\'s ID.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The target device\'s ID.
    deviceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Job' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'job_jobId' - The job\'s ID.
--
-- 'deviceId', 'job_deviceId' - The target device\'s ID.
newJob ::
  Job
newJob =
  Job'
    { jobId = Prelude.Nothing,
      deviceId = Prelude.Nothing
    }

-- | The job\'s ID.
job_jobId :: Lens.Lens' Job (Prelude.Maybe Prelude.Text)
job_jobId = Lens.lens (\Job' {jobId} -> jobId) (\s@Job' {} a -> s {jobId = a} :: Job)

-- | The target device\'s ID.
job_deviceId :: Lens.Lens' Job (Prelude.Maybe Prelude.Text)
job_deviceId = Lens.lens (\Job' {deviceId} -> deviceId) (\s@Job' {} a -> s {deviceId = a} :: Job)

instance Core.FromJSON Job where
  parseJSON =
    Core.withObject
      "Job"
      ( \x ->
          Job'
            Prelude.<$> (x Core..:? "JobId")
            Prelude.<*> (x Core..:? "DeviceId")
      )

instance Prelude.Hashable Job

instance Prelude.NFData Job
