# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  goo-engine = {
    pname = "goo-engine";
    version = "9d27635972055084ea82017d864dbcd1ea26a058";
    src = fetchFromGitHub {
      owner = "dillongoostudios";
      repo = "goo-engine";
      rev = "9d27635972055084ea82017d864dbcd1ea26a058";
      fetchSubmodules = false;
      sha256 = "sha256-Mld6On+HkNSpvqTV7hfiUQqxby0zZ2Ldc+LWW67jSkY=";
    };
    date = "2023-11-11";
  };
  swww = {
    pname = "swww";
    version = "41501980a1875c7e3708ea961caf43cde5a44747";
    src = fetchFromGitHub {
      owner = "Horus645";
      repo = "swww";
      rev = "41501980a1875c7e3708ea961caf43cde5a44747";
      fetchSubmodules = false;
      sha256 = "sha256-muvEFqqeMi0EmxfXmxncUof+K7YUf+jvxTpbUrrJP3Q=";
    };
    date = "2023-12-16";
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
    version = "fef2929dd6967d8b913a4a3bc053e87e1a7fd91c";
    src = fetchgit {
      url = "https://codeberg.org/explosion-mental/wallust.git";
      rev = "fef2929dd6967d8b913a4a3bc053e87e1a7fd91c";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-qX+pU/ovRV7dA35qSA724vV9azz7dMbEyMVBzqS47Ps=";
    };
    date = "2023-12-20";
  };
  waybar = {
    pname = "waybar";
    version = "2674982c7b806f69935443450043f5f9f72f35ee";
    src = fetchFromGitHub {
      owner = "Alexays";
      repo = "Waybar";
      rev = "2674982c7b806f69935443450043f5f9f72f35ee";
      fetchSubmodules = false;
      sha256 = "sha256-4g+aUCyvz+GzhB7Vb71D0P2htzqMkQmr9RkuM/WXy6Y=";
    };
    date = "2023-12-20";
  };
  wezterm = {
    pname = "wezterm";
    version = "e3cd2e93d0ee5f3af7f3fe0af86ffad0cf8c7ea8";
    src = fetchFromGitHub {
      owner = "wez";
      repo = "wezterm";
      rev = "e3cd2e93d0ee5f3af7f3fe0af86ffad0cf8c7ea8";
      fetchSubmodules = true;
      sha256 = "sha256-sj3S1fWC6j9Q/Yc+4IpLbKC3lttUWFk65ROyCdQt+Zc=";
    };
    date = "2023-12-03";
  };
}