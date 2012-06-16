module Handler.Verify
    ( getVerifyR )

where

import Import
import Yesod.Auth

getVerifyR :: Handler RepHtml
getVerifyR = do
    maid <- maybeAuthId
    defaultLayout [whamlet|
<p>Your current auth ID: #{show maid}
$maybe _ <- maid
    <p>
        <a href=@{AuthR LogoutR}>Logout
$nothing
    <p>
        <a href=@{AuthR LoginR}>Go to the login page
|]
