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
-- Module      : Amazonka.FraudDetector.UpdateVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a variable.
module Amazonka.FraudDetector.UpdateVariable
  ( -- * Creating a Request
    UpdateVariable (..),
    newUpdateVariable,

    -- * Request Lenses
    updateVariable_defaultValue,
    updateVariable_variableType,
    updateVariable_description,
    updateVariable_name,

    -- * Destructuring the Response
    UpdateVariableResponse (..),
    newUpdateVariableResponse,

    -- * Response Lenses
    updateVariableResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateVariable' smart constructor.
data UpdateVariable = UpdateVariable'
  { -- | The new default value of the variable.
    defaultValue :: Prelude.Maybe Prelude.Text,
    -- | The variable type. For more information see
    -- <https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types Variable types>.
    variableType :: Prelude.Maybe Prelude.Text,
    -- | The new description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the variable.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVariable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultValue', 'updateVariable_defaultValue' - The new default value of the variable.
--
-- 'variableType', 'updateVariable_variableType' - The variable type. For more information see
-- <https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types Variable types>.
--
-- 'description', 'updateVariable_description' - The new description.
--
-- 'name', 'updateVariable_name' - The name of the variable.
newUpdateVariable ::
  -- | 'name'
  Prelude.Text ->
  UpdateVariable
newUpdateVariable pName_ =
  UpdateVariable'
    { defaultValue = Prelude.Nothing,
      variableType = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_
    }

-- | The new default value of the variable.
updateVariable_defaultValue :: Lens.Lens' UpdateVariable (Prelude.Maybe Prelude.Text)
updateVariable_defaultValue = Lens.lens (\UpdateVariable' {defaultValue} -> defaultValue) (\s@UpdateVariable' {} a -> s {defaultValue = a} :: UpdateVariable)

-- | The variable type. For more information see
-- <https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types Variable types>.
updateVariable_variableType :: Lens.Lens' UpdateVariable (Prelude.Maybe Prelude.Text)
updateVariable_variableType = Lens.lens (\UpdateVariable' {variableType} -> variableType) (\s@UpdateVariable' {} a -> s {variableType = a} :: UpdateVariable)

-- | The new description.
updateVariable_description :: Lens.Lens' UpdateVariable (Prelude.Maybe Prelude.Text)
updateVariable_description = Lens.lens (\UpdateVariable' {description} -> description) (\s@UpdateVariable' {} a -> s {description = a} :: UpdateVariable)

-- | The name of the variable.
updateVariable_name :: Lens.Lens' UpdateVariable Prelude.Text
updateVariable_name = Lens.lens (\UpdateVariable' {name} -> name) (\s@UpdateVariable' {} a -> s {name = a} :: UpdateVariable)

instance Core.AWSRequest UpdateVariable where
  type
    AWSResponse UpdateVariable =
      UpdateVariableResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateVariableResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateVariable where
  hashWithSalt salt' UpdateVariable' {..} =
    salt' `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` variableType
      `Prelude.hashWithSalt` defaultValue

instance Prelude.NFData UpdateVariable where
  rnf UpdateVariable' {..} =
    Prelude.rnf defaultValue
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf variableType

instance Core.ToHeaders UpdateVariable where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.UpdateVariable" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateVariable where
  toJSON UpdateVariable' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("defaultValue" Core..=) Prelude.<$> defaultValue,
            ("variableType" Core..=) Prelude.<$> variableType,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath UpdateVariable where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateVariable where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateVariableResponse' smart constructor.
data UpdateVariableResponse = UpdateVariableResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVariableResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateVariableResponse_httpStatus' - The response's http status code.
newUpdateVariableResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateVariableResponse
newUpdateVariableResponse pHttpStatus_ =
  UpdateVariableResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateVariableResponse_httpStatus :: Lens.Lens' UpdateVariableResponse Prelude.Int
updateVariableResponse_httpStatus = Lens.lens (\UpdateVariableResponse' {httpStatus} -> httpStatus) (\s@UpdateVariableResponse' {} a -> s {httpStatus = a} :: UpdateVariableResponse)

instance Prelude.NFData UpdateVariableResponse where
  rnf UpdateVariableResponse' {..} =
    Prelude.rnf httpStatus
