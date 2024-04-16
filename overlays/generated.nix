# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  swww = {
    pname = "swww";
    version = "132bde3ae00731cc59253611aa4f4223f1111966";
    src = fetchFromGitHub {
      owner = "LGFae";
      repo = "swww";
      rev = "132bde3ae00731cc59253611aa4f4223f1111966";
      fetchSubmodules = false;
      sha256 = "sha256-xZyUFunPaat7WlNEmjYP2ddX6bApvmznYnuSRDKHOOw=";
    };
    date = "2024-04-14";
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
    version = "7d2a3a08f5b6d59d375fb38dcd0a5a6397278808";
    src = fetchgit {
      url = "https://codeberg.org/explosion-mental/wallust.git";
      rev = "7d2a3a08f5b6d59d375fb38dcd0a5a6397278808";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-zf9NJLqSkf+VrNjkZywA8OdVm6K7viVdk/7Qt3LqNCQ=";
    };
    date = "2024-04-11";
  };
  waybar = {
    pname = "waybar";
    version = "3efebc282294c78f7312b70d2f18e3df3daacd91";
    src = fetchFromGitHub {
      owner = "Alexays";
      repo = "Waybar";
      rev = "3efebc282294c78f7312b70d2f18e3df3daacd91";
      fetchSubmodules = false;
      sha256 = "sha256-X8bn+q9/lcTmODxqLF9jm/ZuakRWgATrEJLPDsYO3dc=";
    };
    date = "2024-04-15";
  };
  wezterm = {
    pname = "wezterm";
    version = "cce0706b1f2a9e2d1f02c57f2d1cd367c91df1ae";
    src = fetchFromGitHub {
      owner = "wez";
      repo = "wezterm";
      rev = "cce0706b1f2a9e2d1f02c57f2d1cd367c91df1ae";
      fetchSubmodules = true;
      sha256 = "sha256-BBPxidOpFrw/tIRTqMSREyJF3QEWOwlIoVRT3FD62sQ=";
    };
    date = "2024-04-05";
  };
}
