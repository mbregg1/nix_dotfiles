# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  swww = {
    pname = "swww";
    version = "a4c5bdbf08f6ff1839aa76f162f540b822cabca3";
    src = fetchFromGitHub {
      owner = "LGFae";
      repo = "swww";
      rev = "a4c5bdbf08f6ff1839aa76f162f540b822cabca3";
      fetchSubmodules = false;
      sha256 = "sha256-huJnElxtHGmNd2I3zeDClPgfhfFPtb2y99FzR9i9JPc=";
    };
    date = "2024-01-16";
  };
  transmission-web-soft-theme = {
    pname = "transmission-web-soft-theme";
    version = "a957b41b0303e6b74e67191311e0d2af9b60a965";
    src = fetchFromGitHub {
      owner = "diesys";
      repo = "transmission-web-soft-theme";
      rev = "a957b41b0303e6b74e67191311e0d2af9b60a965";
      fetchSubmodules = false;
      sha256 = "sha256-KngN44lnhv0sga0otYC9F5xoqLDDIVxobXRlhhhSmHo=";
    };
    date = "2021-01-28";
  };
  wallust = {
    pname = "wallust";
    version = "32bd13a684d01586bede8fa9c5d81b11c8121b24";
    src = fetchgit {
      url = "https://codeberg.org/explosion-mental/wallust.git";
      rev = "32bd13a684d01586bede8fa9c5d81b11c8121b24";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-0kPmr7/2uVncpCGVOeIkYlm2M0n9+ypVl7bQ9HnqLb4=";
    };
    date = "2024-01-26";
  };
  waybar = {
    pname = "waybar";
    version = "5f115785cf94599a57e5d396e71b3f6f85d56cfd";
    src = fetchFromGitHub {
      owner = "Alexays";
      repo = "Waybar";
      rev = "5f115785cf94599a57e5d396e71b3f6f85d56cfd";
      fetchSubmodules = false;
      sha256 = "sha256-yjA2vPca3X3ku50L8zrShPdBAnCKQmdfgw/U/IJFKEo=";
    };
    date = "2024-01-25";
  };
  wezterm = {
    pname = "wezterm";
    version = "6de7c604526552eab6be355e31b0562e72c6dda0";
    src = fetchFromGitHub {
      owner = "wez";
      repo = "wezterm";
      rev = "6de7c604526552eab6be355e31b0562e72c6dda0";
      fetchSubmodules = true;
      sha256 = "sha256-EIx+6He86mSCzLrufoDuLPuIQfOPju+Hp1dZTTTN4sI=";
    };
    date = "2024-01-27";
  };
}
