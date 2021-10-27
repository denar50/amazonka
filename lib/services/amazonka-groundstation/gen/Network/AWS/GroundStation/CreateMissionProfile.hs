{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GroundStation.CreateMissionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a mission profile.
--
-- @dataflowEdges@ is a list of lists of strings. Each lower level list of
-- strings has two elements: a /from/ ARN and a /to/ ARN.
module Network.AWS.GroundStation.CreateMissionProfile
  ( -- * Creating a Request
    CreateMissionProfile (..),
    newCreateMissionProfile,

    -- * Request Lenses
    createMissionProfile_contactPrePassDurationSeconds,
    createMissionProfile_contactPostPassDurationSeconds,
    createMissionProfile_tags,
    createMissionProfile_dataflowEdges,
    createMissionProfile_minimumViableContactDurationSeconds,
    createMissionProfile_name,
    createMissionProfile_trackingConfigArn,

    -- * Destructuring the Response
    MissionProfileIdResponse (..),
    newMissionProfileIdResponse,

    -- * Response Lenses
    missionProfileIdResponse_missionProfileId,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GroundStation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateMissionProfile' smart constructor.
data CreateMissionProfile = CreateMissionProfile'
  { -- | Amount of time prior to contact start you’d like to receive a CloudWatch
    -- event indicating an upcoming pass.
    contactPrePassDurationSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Amount of time after a contact ends that you’d like to receive a
    -- CloudWatch event indicating the pass has finished.
    contactPostPassDurationSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Tags assigned to a mission profile.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A list of lists of ARNs. Each list of ARNs is an edge, with a /from/
    -- @Config@ and a /to/ @Config@.
    dataflowEdges :: [Prelude.NonEmpty Prelude.Text],
    -- | Smallest amount of time in seconds that you’d like to see for an
    -- available contact. AWS Ground Station will not present you with contacts
    -- shorter than this duration.
    minimumViableContactDurationSeconds :: Prelude.Natural,
    -- | Name of a mission profile.
    name :: Prelude.Text,
    -- | ARN of a tracking @Config@.
    trackingConfigArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMissionProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactPrePassDurationSeconds', 'createMissionProfile_contactPrePassDurationSeconds' - Amount of time prior to contact start you’d like to receive a CloudWatch
-- event indicating an upcoming pass.
--
-- 'contactPostPassDurationSeconds', 'createMissionProfile_contactPostPassDurationSeconds' - Amount of time after a contact ends that you’d like to receive a
-- CloudWatch event indicating the pass has finished.
--
-- 'tags', 'createMissionProfile_tags' - Tags assigned to a mission profile.
--
-- 'dataflowEdges', 'createMissionProfile_dataflowEdges' - A list of lists of ARNs. Each list of ARNs is an edge, with a /from/
-- @Config@ and a /to/ @Config@.
--
-- 'minimumViableContactDurationSeconds', 'createMissionProfile_minimumViableContactDurationSeconds' - Smallest amount of time in seconds that you’d like to see for an
-- available contact. AWS Ground Station will not present you with contacts
-- shorter than this duration.
--
-- 'name', 'createMissionProfile_name' - Name of a mission profile.
--
-- 'trackingConfigArn', 'createMissionProfile_trackingConfigArn' - ARN of a tracking @Config@.
newCreateMissionProfile ::
  -- | 'minimumViableContactDurationSeconds'
  Prelude.Natural ->
  -- | 'name'
  Prelude.Text ->
  -- | 'trackingConfigArn'
  Prelude.Text ->
  CreateMissionProfile
newCreateMissionProfile
  pMinimumViableContactDurationSeconds_
  pName_
  pTrackingConfigArn_ =
    CreateMissionProfile'
      { contactPrePassDurationSeconds =
          Prelude.Nothing,
        contactPostPassDurationSeconds = Prelude.Nothing,
        tags = Prelude.Nothing,
        dataflowEdges = Prelude.mempty,
        minimumViableContactDurationSeconds =
          pMinimumViableContactDurationSeconds_,
        name = pName_,
        trackingConfigArn = pTrackingConfigArn_
      }

-- | Amount of time prior to contact start you’d like to receive a CloudWatch
-- event indicating an upcoming pass.
createMissionProfile_contactPrePassDurationSeconds :: Lens.Lens' CreateMissionProfile (Prelude.Maybe Prelude.Natural)
createMissionProfile_contactPrePassDurationSeconds = Lens.lens (\CreateMissionProfile' {contactPrePassDurationSeconds} -> contactPrePassDurationSeconds) (\s@CreateMissionProfile' {} a -> s {contactPrePassDurationSeconds = a} :: CreateMissionProfile)

-- | Amount of time after a contact ends that you’d like to receive a
-- CloudWatch event indicating the pass has finished.
createMissionProfile_contactPostPassDurationSeconds :: Lens.Lens' CreateMissionProfile (Prelude.Maybe Prelude.Natural)
createMissionProfile_contactPostPassDurationSeconds = Lens.lens (\CreateMissionProfile' {contactPostPassDurationSeconds} -> contactPostPassDurationSeconds) (\s@CreateMissionProfile' {} a -> s {contactPostPassDurationSeconds = a} :: CreateMissionProfile)

-- | Tags assigned to a mission profile.
createMissionProfile_tags :: Lens.Lens' CreateMissionProfile (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createMissionProfile_tags = Lens.lens (\CreateMissionProfile' {tags} -> tags) (\s@CreateMissionProfile' {} a -> s {tags = a} :: CreateMissionProfile) Prelude.. Lens.mapping Lens.coerced

-- | A list of lists of ARNs. Each list of ARNs is an edge, with a /from/
-- @Config@ and a /to/ @Config@.
createMissionProfile_dataflowEdges :: Lens.Lens' CreateMissionProfile [Prelude.NonEmpty Prelude.Text]
createMissionProfile_dataflowEdges = Lens.lens (\CreateMissionProfile' {dataflowEdges} -> dataflowEdges) (\s@CreateMissionProfile' {} a -> s {dataflowEdges = a} :: CreateMissionProfile) Prelude.. Lens.coerced

-- | Smallest amount of time in seconds that you’d like to see for an
-- available contact. AWS Ground Station will not present you with contacts
-- shorter than this duration.
createMissionProfile_minimumViableContactDurationSeconds :: Lens.Lens' CreateMissionProfile Prelude.Natural
createMissionProfile_minimumViableContactDurationSeconds = Lens.lens (\CreateMissionProfile' {minimumViableContactDurationSeconds} -> minimumViableContactDurationSeconds) (\s@CreateMissionProfile' {} a -> s {minimumViableContactDurationSeconds = a} :: CreateMissionProfile)

-- | Name of a mission profile.
createMissionProfile_name :: Lens.Lens' CreateMissionProfile Prelude.Text
createMissionProfile_name = Lens.lens (\CreateMissionProfile' {name} -> name) (\s@CreateMissionProfile' {} a -> s {name = a} :: CreateMissionProfile)

-- | ARN of a tracking @Config@.
createMissionProfile_trackingConfigArn :: Lens.Lens' CreateMissionProfile Prelude.Text
createMissionProfile_trackingConfigArn = Lens.lens (\CreateMissionProfile' {trackingConfigArn} -> trackingConfigArn) (\s@CreateMissionProfile' {} a -> s {trackingConfigArn = a} :: CreateMissionProfile)

instance Core.AWSRequest CreateMissionProfile where
  type
    AWSResponse CreateMissionProfile =
      MissionProfileIdResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable CreateMissionProfile

instance Prelude.NFData CreateMissionProfile

instance Core.ToHeaders CreateMissionProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateMissionProfile where
  toJSON CreateMissionProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("contactPrePassDurationSeconds" Core..=)
              Prelude.<$> contactPrePassDurationSeconds,
            ("contactPostPassDurationSeconds" Core..=)
              Prelude.<$> contactPostPassDurationSeconds,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("dataflowEdges" Core..= dataflowEdges),
            Prelude.Just
              ( "minimumViableContactDurationSeconds"
                  Core..= minimumViableContactDurationSeconds
              ),
            Prelude.Just ("name" Core..= name),
            Prelude.Just
              ("trackingConfigArn" Core..= trackingConfigArn)
          ]
      )

instance Core.ToPath CreateMissionProfile where
  toPath = Prelude.const "/missionprofile"

instance Core.ToQuery CreateMissionProfile where
  toQuery = Prelude.const Prelude.mempty
