{-# LANGUAGE TupleSections, OverloadedStrings #-}
module Handler.Home where

import Import

-- This is a handler function for the GET request method on the HomeR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
--
-- The majority of the code you will write in Yesod lives in these handler
-- functions. You can spread them across multiple files if you are so
-- inclined, or create a single monolithic file.
getHomeR :: Handler RepHtml
getHomeR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getHomeR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Yesod Masters Project"
        $(widgetFile "homepage")
         

postHomeR :: Handler RepHtml
postHomeR = do
    ((result, formWidget), formEnctype) <- runFormPost sampleForm
    let handlerName = "postHomeR" :: Text
        submission = case result of
            FormSuccess res -> Just res
            _ -> Nothing

    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Yesod Masters Project"
        $(widgetFile "homepage")

sampleForm :: Form (FileInfo, Text)
sampleForm = renderDivs $ (,)
    <$> fileAFormReq "Choose a file"
    <*> areq textField "What's on the file?" Nothing

getContactR :: Handler RepHtml
getContactR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getContactR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Contact Me"
        $(widgetFile "contact")

getQuickR :: Handler RepHtml
getQuickR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getQuickR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Quick Start"
        $(widgetFile "quick")

getAboutR :: Handler RepHtml
getAboutR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getAboutR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "About"
        $(widgetFile "about")

getLinksR :: Handler RepHtml
getLinksR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getLinksR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Links"
        $(widgetFile "links")

getSpeedtestR :: Handler RepHtml
getSpeedtestR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getSpeedtestR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Speed Test"
        $(widgetFile "speedtest")

getDbtestR :: Handler RepHtml
getDbtestR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getDbtestR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Database Test"
        $(widgetFile "dbtest")

getLogictestR :: Handler RepHtml
getLogictestR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getLogictestR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Logic Test"
        $(widgetFile "logictest")

getAjaxtestR :: Handler RepHtml
getAjaxtestR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getAjaxtestR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Ajax Test"
        $(widgetFile "ajaxtest")

getAsynctestR :: Handler RepHtml
getAsynctestR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getAsynctestR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Asynchronous Test"
        $(widgetFile "asynctest")

getTutorialR :: Handler RepHtml
getTutorialR = do
    (formWidget, formEnctype) <- generateFormPost sampleForm
    let submission = Nothing :: Maybe (FileInfo, Text)
        handlerName = "getTutorialR" :: Text
    defaultLayout $ do
        aDomId <- lift newIdent
        setTitle "Tutorial"
        $(widgetFile "tutorial")


