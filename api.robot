
*** Settings ***
Library     RequestsLibrary


*** Test Cases ***
TC-001 Verify when input wrong username or password, API should return error
    #call API with wrong username / password
    Create Session      loginSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio222  password=12345
    ${resp}=    POST On Session     loginSession    /login      json=${request_body}    expected_status=401
    Should Be Equal     ${resp.json()['status']}    error
    Should Be Equal     ${resp.json()['message']}    invalid username or password

TC-002 Verify That Can Get Asset List From Get API correctly
    #call API to login and get token 
    Create Session      assetSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio  password=weBuildBestQa
    ${resp}=    POST On Session     assetSession    /login      json=${request_body}    expected_status=200
    ${token}=   Set Variable    ${resp.json()['message']}
    ${headers}=     Create Dictionary       token=${token}
    #call Get API to get asset (with token) and verify status code is 200
    ${get_resp}=    GET On Session      assetSession    /assets         headers=${headers}
    #check response contains at least 1 assets
    ${count}=       Get Length  ${get_resp.json()}
    ${morethanone}=     Evaluate    ${count}>0
    Should Be True      ${morethanone}

TC-003 Verify that get asset API always require valid token
    # Login to get token (valid login)
    Create Session      assetSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio  password=weBuildBestQa
    ${resp}=    POST On Session     assetSession    /login      json=${request_body}    expected_status=200
    ${valid_token}=     Set Variable    ${resp.json()['message']}
    ${valid_headers}=    Create Dictionary    token=${valid_token}

    # Call asset API with invalid token (Expected: 401 Unauthorized)
    ${invalid_headers}=    Create Dictionary    token=InvalidToken123
    ${invalid_resp}=    GET On Session      assetSession    /assets         headers=${invalid_headers}    expected_status=401
    #Log     ${invalid_resp.json()['status']}
    #Log     ${invalid_resp.json()['message']}
    Should Be Equal     ${invalid_resp.json()['status']}    error
    Should Be Equal     ${invalid_resp.json()['message']}    you do not have access to this resource
    #Should Contain    ${response_valid_token.json()}    assets
    #call asset API with invalid token or with no token 
    # check response code = 401 
    # check error message 


TC-004 Verify that create asset API can work correctly 
    # Login to get token (valid login)
    Create Session      assetSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio  password=weBuildBestQa
    ${resp}=    POST On Session     assetSession    /login      json=${request_body}    expected_status=200
    ${valid_token}=     Set Variable    ${resp.json()['message']}
    ${valid_headers}=    Create Dictionary    token=${valid_token}

    # Create asset API with valid token
    ${new_asset}=    Create Dictionary    assetId=aelie013  assetName=aelie13  assetType=1  inUse=true
    ${create_resp}=    POST On Session     assetSession    /assets      json=${new_asset}    headers=${valid_headers}    expected_status=200
    Should Be Equal     ${create_resp.json()['status']}    success

    # Check that the created asset can be retrieved from GET /assets
    ${get_resp}=    GET On Session      assetSession    /assets         headers=${valid_headers}
    ${asset_exists}=    Evaluate    "any(item['assetId'] == 'aelie012' for item in ${get_resp.json()})"
    Should Be True    ${asset_exists}

    #call create asset API (POST /assets) with valid token 
    # check response code = 200 
    # check status message = success
    # check that created asset can be returned from GET /assets


TC-005 Verify that cannot create asset with duplicated ID 
    # Login to get token (valid login)
    Create Session      assetSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio  password=weBuildBestQa
    ${resp}=    POST On Session     assetSession    /login      json=${request_body}    expected_status=200
    ${valid_token}=     Set Variable    ${resp.json()['message']}
    ${valid_headers}=    Create Dictionary    token=${valid_token}

    # Create asset API with valid token
    ${new_asset}=    Create Dictionary    assetId=aelie013  assetName=aelie13  assetType=1  inUse=true
    ${create_resp}=    POST On Session     assetSession    /assets      json=${new_asset}    headers=${valid_headers}    expected_status=200
    Should Be Equal     ${create_resp.json()['status']}    failed
    Should Be Equal     ${create_resp.json()['message']}    id : ${new_asset['assetId']} is already exists , please try with another id

    # Check that the assetId does not exist in the list of assets (GET /assets)
    ${get_resp}=    GET On Session      assetSession    /assets         headers=${valid_headers}
    Should Not Contain    ${get_resp.json()}    ${new_asset['assetId']}
    #call create asset with valid token but use duplicate asset ID 
    # check status message 
    # check error message 
    # check that no duplicated asset returned from GET /assets

TC-006 Verify that modify asset API can work correctly 
    # Login to get token (valid login)
    Create Session      assetSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio  password=weBuildBestQa
    ${resp}=    POST On Session     assetSession    /login      json=${request_body}    expected_status=200
    ${valid_token}=     Set Variable    ${resp.json()['message']}
    ${valid_headers}=    Create Dictionary    token=${valid_token}

    # Prepare new name for asset modification
    ${asset_id}=    Set Variable    aelie01
    ${new_name}=    Set Variable    aelie01Updated
    ${modify_asset}=    Create Dictionary    assetId=${asset_id}    assetName=${new_name}

    # Modify asset API with valid token
    ${modify_resp}=    PUT On Session     assetSession    /assets      json=${modify_asset}    headers=${valid_headers}    expected_status=200
    Should Be Equal     ${modify_resp.json()['status']}    success

    # Check that the asset name has been changed (GET /assets)
    ${get_resp}=    GET On Session      assetSession    /assets         headers=${valid_headers}
    ${asset_exists}=    Evaluate    "any(item['assetId'] == '${asset_id}' and item['assetName'] == '${new_name}' for item in ${get_resp.json()})"
    Should Be True    ${asset_exists}

    #call modify asset with valid token and try to change name of some asset 
    #check status message = success 
    #call get api to check that asset Name has been changed 

TC-007 Verify that delete asset API can work correctly
    # Login to get token (valid login)
    Create Session      assetSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio  password=weBuildBestQa
    ${resp}=    POST On Session     assetSession    /login      json=${request_body}    expected_status=200
    ${valid_token}=     Set Variable    ${resp.json()['message']}
    ${valid_headers}=    Create Dictionary    token=${valid_token}

    # Delete asset API with valid token (if assetId is part of the URL path)
    ${asset_to_delete}=    Set Variable    aelie008
    ${delete_resp}=    DELETE On Session     assetSession    url=/assets/${asset_to_delete}    headers=${valid_headers}    expected_status=200
    Should Be Equal     ${delete_resp.json()['status']}    success

    # Check that the asset has been deleted (GET /assets)
    ${get_resp}=    GET On Session      assetSession    /assets         headers=${valid_headers}
    ${asset_exists}=    Evaluate    "any(item['assetId'] == '${asset_to_delete}' for item in ${get_resp.json()})"
    Should Not Be True    ${asset_exists}

    #call delete asset 
    #call GET to check that asset has been deleted 


TC-008 Verify that cannot delete asset which ID does not exists 
    # Login to get token (valid login)
    Create Session      assetSession             http://localhost:8082
    ${request_body}=    Create Dictionary   username=doppio  password=weBuildBestQa
    ${resp}=    POST On Session     assetSession    /login      json=${request_body}    expected_status=200
    ${valid_token}=     Set Variable    ${resp.json()['message']}
    ${valid_headers}=    Create Dictionary    token=${valid_token}

    # Attempt to delete asset with non-existing ID
    ${non_existing_asset}=    Set Variable    aelie_nonexistent
    ${delete_resp}=    DELETE On Session     assetSession    url=/assets/${non_existing_asset}    headers=${valid_headers}    expected_status=200

    # Check that the response is an error (asset not found)
    Should Be Equal     ${delete_resp.json()['status']}    failed
    Should Be Equal     ${delete_resp.json()['message']}    cannot find this id in database

    # Call GET to ensure the non-existing asset wasn't deleted
    ${get_resp}=    GET On Session      assetSession    /assets         headers=${valid_headers}
    ${asset_exists}=    Evaluate    "any(item['assetId'] == '${non_existing_asset}' for item in ${get_resp.json()})"
    Should Not Be True    ${asset_exists}

    #call delete asset with non-existing id 
    #check error message





