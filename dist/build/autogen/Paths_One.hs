module Paths_One (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,0], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/swires/.cabal/bin"
libdir     = "/home/swires/.cabal/lib/One-0.0.0/ghc-7.4.1"
datadir    = "/home/swires/.cabal/share/One-0.0.0"
libexecdir = "/home/swires/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "One_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "One_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "One_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "One_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
