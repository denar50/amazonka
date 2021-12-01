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
-- Module      : Amazonka.Route53Resolver.Types.FirewallRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53Resolver.Types.FirewallRuleGroup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53Resolver.Types.FirewallRuleGroupStatus
import Amazonka.Route53Resolver.Types.ShareStatus

-- | High-level information for a firewall rule group. A firewall rule group
-- is a collection of rules that DNS Firewall uses to filter DNS network
-- traffic for a VPC. To retrieve the rules for the rule group, call
-- ListFirewallRules.
--
-- /See:/ 'newFirewallRuleGroup' smart constructor.
data FirewallRuleGroup = FirewallRuleGroup'
  { -- | The date and time that the rule group was created, in Unix time format
    -- and Coordinated Universal Time (UTC).
    creationTime :: Prelude.Maybe Prelude.Text,
    -- | The status of the domain list.
    status :: Prelude.Maybe FirewallRuleGroupStatus,
    -- | The ARN (Amazon Resource Name) of the rule group.
    arn :: Prelude.Maybe Prelude.Text,
    -- | A unique string defined by you to identify the request. This allows you
    -- to retry failed requests without the risk of running the operation
    -- twice. This can be any unique string, for example, a timestamp.
    creatorRequestId :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the rule group was last modified, in Unix time
    -- format and Coordinated Universal Time (UTC).
    modificationTime :: Prelude.Maybe Prelude.Text,
    -- | Whether the rule group is shared with other Amazon Web Services
    -- accounts, or was shared with the current account by another Amazon Web
    -- Services account. Sharing is configured through Resource Access Manager
    -- (RAM).
    shareStatus :: Prelude.Maybe ShareStatus,
    -- | The Amazon Web Services account ID for the account that created the rule
    -- group. When a rule group is shared with your account, this is the
    -- account that has shared the rule group with you.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | Additional information about the status of the rule group, if available.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The name of the rule group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the rule group.
    id :: Prelude.Maybe Prelude.Text,
    -- | The number of rules in the rule group.
    ruleCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FirewallRuleGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'firewallRuleGroup_creationTime' - The date and time that the rule group was created, in Unix time format
-- and Coordinated Universal Time (UTC).
--
-- 'status', 'firewallRuleGroup_status' - The status of the domain list.
--
-- 'arn', 'firewallRuleGroup_arn' - The ARN (Amazon Resource Name) of the rule group.
--
-- 'creatorRequestId', 'firewallRuleGroup_creatorRequestId' - A unique string defined by you to identify the request. This allows you
-- to retry failed requests without the risk of running the operation
-- twice. This can be any unique string, for example, a timestamp.
--
-- 'modificationTime', 'firewallRuleGroup_modificationTime' - The date and time that the rule group was last modified, in Unix time
-- format and Coordinated Universal Time (UTC).
--
-- 'shareStatus', 'firewallRuleGroup_shareStatus' - Whether the rule group is shared with other Amazon Web Services
-- accounts, or was shared with the current account by another Amazon Web
-- Services account. Sharing is configured through Resource Access Manager
-- (RAM).
--
-- 'ownerId', 'firewallRuleGroup_ownerId' - The Amazon Web Services account ID for the account that created the rule
-- group. When a rule group is shared with your account, this is the
-- account that has shared the rule group with you.
--
-- 'statusMessage', 'firewallRuleGroup_statusMessage' - Additional information about the status of the rule group, if available.
--
-- 'name', 'firewallRuleGroup_name' - The name of the rule group.
--
-- 'id', 'firewallRuleGroup_id' - The ID of the rule group.
--
-- 'ruleCount', 'firewallRuleGroup_ruleCount' - The number of rules in the rule group.
newFirewallRuleGroup ::
  FirewallRuleGroup
newFirewallRuleGroup =
  FirewallRuleGroup'
    { creationTime = Prelude.Nothing,
      status = Prelude.Nothing,
      arn = Prelude.Nothing,
      creatorRequestId = Prelude.Nothing,
      modificationTime = Prelude.Nothing,
      shareStatus = Prelude.Nothing,
      ownerId = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      ruleCount = Prelude.Nothing
    }

-- | The date and time that the rule group was created, in Unix time format
-- and Coordinated Universal Time (UTC).
firewallRuleGroup_creationTime :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_creationTime = Lens.lens (\FirewallRuleGroup' {creationTime} -> creationTime) (\s@FirewallRuleGroup' {} a -> s {creationTime = a} :: FirewallRuleGroup)

-- | The status of the domain list.
firewallRuleGroup_status :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe FirewallRuleGroupStatus)
firewallRuleGroup_status = Lens.lens (\FirewallRuleGroup' {status} -> status) (\s@FirewallRuleGroup' {} a -> s {status = a} :: FirewallRuleGroup)

-- | The ARN (Amazon Resource Name) of the rule group.
firewallRuleGroup_arn :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_arn = Lens.lens (\FirewallRuleGroup' {arn} -> arn) (\s@FirewallRuleGroup' {} a -> s {arn = a} :: FirewallRuleGroup)

-- | A unique string defined by you to identify the request. This allows you
-- to retry failed requests without the risk of running the operation
-- twice. This can be any unique string, for example, a timestamp.
firewallRuleGroup_creatorRequestId :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_creatorRequestId = Lens.lens (\FirewallRuleGroup' {creatorRequestId} -> creatorRequestId) (\s@FirewallRuleGroup' {} a -> s {creatorRequestId = a} :: FirewallRuleGroup)

-- | The date and time that the rule group was last modified, in Unix time
-- format and Coordinated Universal Time (UTC).
firewallRuleGroup_modificationTime :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_modificationTime = Lens.lens (\FirewallRuleGroup' {modificationTime} -> modificationTime) (\s@FirewallRuleGroup' {} a -> s {modificationTime = a} :: FirewallRuleGroup)

-- | Whether the rule group is shared with other Amazon Web Services
-- accounts, or was shared with the current account by another Amazon Web
-- Services account. Sharing is configured through Resource Access Manager
-- (RAM).
firewallRuleGroup_shareStatus :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe ShareStatus)
firewallRuleGroup_shareStatus = Lens.lens (\FirewallRuleGroup' {shareStatus} -> shareStatus) (\s@FirewallRuleGroup' {} a -> s {shareStatus = a} :: FirewallRuleGroup)

-- | The Amazon Web Services account ID for the account that created the rule
-- group. When a rule group is shared with your account, this is the
-- account that has shared the rule group with you.
firewallRuleGroup_ownerId :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_ownerId = Lens.lens (\FirewallRuleGroup' {ownerId} -> ownerId) (\s@FirewallRuleGroup' {} a -> s {ownerId = a} :: FirewallRuleGroup)

-- | Additional information about the status of the rule group, if available.
firewallRuleGroup_statusMessage :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_statusMessage = Lens.lens (\FirewallRuleGroup' {statusMessage} -> statusMessage) (\s@FirewallRuleGroup' {} a -> s {statusMessage = a} :: FirewallRuleGroup)

-- | The name of the rule group.
firewallRuleGroup_name :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_name = Lens.lens (\FirewallRuleGroup' {name} -> name) (\s@FirewallRuleGroup' {} a -> s {name = a} :: FirewallRuleGroup)

-- | The ID of the rule group.
firewallRuleGroup_id :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Text)
firewallRuleGroup_id = Lens.lens (\FirewallRuleGroup' {id} -> id) (\s@FirewallRuleGroup' {} a -> s {id = a} :: FirewallRuleGroup)

-- | The number of rules in the rule group.
firewallRuleGroup_ruleCount :: Lens.Lens' FirewallRuleGroup (Prelude.Maybe Prelude.Int)
firewallRuleGroup_ruleCount = Lens.lens (\FirewallRuleGroup' {ruleCount} -> ruleCount) (\s@FirewallRuleGroup' {} a -> s {ruleCount = a} :: FirewallRuleGroup)

instance Core.FromJSON FirewallRuleGroup where
  parseJSON =
    Core.withObject
      "FirewallRuleGroup"
      ( \x ->
          FirewallRuleGroup'
            Prelude.<$> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "CreatorRequestId")
            Prelude.<*> (x Core..:? "ModificationTime")
            Prelude.<*> (x Core..:? "ShareStatus")
            Prelude.<*> (x Core..:? "OwnerId")
            Prelude.<*> (x Core..:? "StatusMessage")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "RuleCount")
      )

instance Prelude.Hashable FirewallRuleGroup where
  hashWithSalt salt' FirewallRuleGroup' {..} =
    salt' `Prelude.hashWithSalt` ruleCount
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` statusMessage
      `Prelude.hashWithSalt` ownerId
      `Prelude.hashWithSalt` shareStatus
      `Prelude.hashWithSalt` modificationTime
      `Prelude.hashWithSalt` creatorRequestId
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData FirewallRuleGroup where
  rnf FirewallRuleGroup' {..} =
    Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf ruleCount
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf statusMessage
      `Prelude.seq` Prelude.rnf ownerId
      `Prelude.seq` Prelude.rnf shareStatus
      `Prelude.seq` Prelude.rnf modificationTime
      `Prelude.seq` Prelude.rnf creatorRequestId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
