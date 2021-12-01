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
-- Module      : Amazonka.AppSync.ListDataSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the data sources for a given API.
--
-- This operation returns paginated results.
module Amazonka.AppSync.ListDataSources
  ( -- * Creating a Request
    ListDataSources (..),
    newListDataSources,

    -- * Request Lenses
    listDataSources_nextToken,
    listDataSources_maxResults,
    listDataSources_apiId,

    -- * Destructuring the Response
    ListDataSourcesResponse (..),
    newListDataSourcesResponse,

    -- * Response Lenses
    listDataSourcesResponse_dataSources,
    listDataSourcesResponse_nextToken,
    listDataSourcesResponse_httpStatus,
  )
where

import Amazonka.AppSync.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListDataSources' smart constructor.
data ListDataSources = ListDataSources'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results you want the request to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The API ID.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDataSources_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'maxResults', 'listDataSources_maxResults' - The maximum number of results you want the request to return.
--
-- 'apiId', 'listDataSources_apiId' - The API ID.
newListDataSources ::
  -- | 'apiId'
  Prelude.Text ->
  ListDataSources
newListDataSources pApiId_ =
  ListDataSources'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      apiId = pApiId_
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listDataSources_nextToken :: Lens.Lens' ListDataSources (Prelude.Maybe Prelude.Text)
listDataSources_nextToken = Lens.lens (\ListDataSources' {nextToken} -> nextToken) (\s@ListDataSources' {} a -> s {nextToken = a} :: ListDataSources)

-- | The maximum number of results you want the request to return.
listDataSources_maxResults :: Lens.Lens' ListDataSources (Prelude.Maybe Prelude.Natural)
listDataSources_maxResults = Lens.lens (\ListDataSources' {maxResults} -> maxResults) (\s@ListDataSources' {} a -> s {maxResults = a} :: ListDataSources)

-- | The API ID.
listDataSources_apiId :: Lens.Lens' ListDataSources Prelude.Text
listDataSources_apiId = Lens.lens (\ListDataSources' {apiId} -> apiId) (\s@ListDataSources' {} a -> s {apiId = a} :: ListDataSources)

instance Core.AWSPager ListDataSources where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDataSourcesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDataSourcesResponse_dataSources
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDataSources_nextToken
          Lens..~ rs
          Lens.^? listDataSourcesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListDataSources where
  type
    AWSResponse ListDataSources =
      ListDataSourcesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDataSourcesResponse'
            Prelude.<$> (x Core..?> "dataSources" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDataSources where
  hashWithSalt salt' ListDataSources' {..} =
    salt' `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` nextToken

instance Prelude.NFData ListDataSources where
  rnf ListDataSources' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListDataSources where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDataSources where
  toPath ListDataSources' {..} =
    Prelude.mconcat
      ["/v1/apis/", Core.toBS apiId, "/datasources"]

instance Core.ToQuery ListDataSources where
  toQuery ListDataSources' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListDataSourcesResponse' smart constructor.
data ListDataSourcesResponse = ListDataSourcesResponse'
  { -- | The @DataSource@ objects.
    dataSources :: Prelude.Maybe [DataSource],
    -- | An identifier to be passed in the next request to this operation to
    -- return the next set of items in the list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSources', 'listDataSourcesResponse_dataSources' - The @DataSource@ objects.
--
-- 'nextToken', 'listDataSourcesResponse_nextToken' - An identifier to be passed in the next request to this operation to
-- return the next set of items in the list.
--
-- 'httpStatus', 'listDataSourcesResponse_httpStatus' - The response's http status code.
newListDataSourcesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDataSourcesResponse
newListDataSourcesResponse pHttpStatus_ =
  ListDataSourcesResponse'
    { dataSources =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @DataSource@ objects.
listDataSourcesResponse_dataSources :: Lens.Lens' ListDataSourcesResponse (Prelude.Maybe [DataSource])
listDataSourcesResponse_dataSources = Lens.lens (\ListDataSourcesResponse' {dataSources} -> dataSources) (\s@ListDataSourcesResponse' {} a -> s {dataSources = a} :: ListDataSourcesResponse) Prelude.. Lens.mapping Lens.coerced

-- | An identifier to be passed in the next request to this operation to
-- return the next set of items in the list.
listDataSourcesResponse_nextToken :: Lens.Lens' ListDataSourcesResponse (Prelude.Maybe Prelude.Text)
listDataSourcesResponse_nextToken = Lens.lens (\ListDataSourcesResponse' {nextToken} -> nextToken) (\s@ListDataSourcesResponse' {} a -> s {nextToken = a} :: ListDataSourcesResponse)

-- | The response's http status code.
listDataSourcesResponse_httpStatus :: Lens.Lens' ListDataSourcesResponse Prelude.Int
listDataSourcesResponse_httpStatus = Lens.lens (\ListDataSourcesResponse' {httpStatus} -> httpStatus) (\s@ListDataSourcesResponse' {} a -> s {httpStatus = a} :: ListDataSourcesResponse)

instance Prelude.NFData ListDataSourcesResponse where
  rnf ListDataSourcesResponse' {..} =
    Prelude.rnf dataSources
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf nextToken
