# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  hyprcursor = {
    pname = "hyprcursor";
    version = "4493a972b48f9c3014befbbf381ed5fff91a65dc";
    src = fetchFromGitHub {
      owner = "hyprwm";
      repo = "hyprcursor";
      rev = "4493a972b48f9c3014befbbf381ed5fff91a65dc";
      fetchSubmodules = false;
      sha256 = "sha256-aYlHTWylczLt6ERJyg6E66Y/XSCbVL7leVcRuJmVbpI=";
    };
    date = "2024-07-18";
  };
  hyprlock = {
    pname = "hyprlock";
    version = "cf0e975fedcddde897a75c5b6a2a111177b0baad";
    src = fetchFromGitHub {
      owner = "hyprwm";
      repo = "hyprlock";
      rev = "cf0e975fedcddde897a75c5b6a2a111177b0baad";
      fetchSubmodules = false;
      sha256 = "sha256-S70Pif/SaChwtJwV0K4rUh+pU8kyVtzbGtNtsOQ8geo=";
    };
    date = "2024-07-24";
  };
  swww = {
    pname = "swww";
    version = "432b7135af0bb34e4b0e55edf76ff516937bc7b0";
    src = fetchFromGitHub {
      owner = "LGFae";
      repo = "swww";
      rev = "432b7135af0bb34e4b0e55edf76ff516937bc7b0";
      fetchSubmodules = false;
      sha256 = "sha256-pX6fJrlNXe1W5ZO9nC9ikN1zoAcHDqErLS7EnglD33o=";
    };
  };
  wallust = {
    pname = "wallust";
    version = "59bfc2af698f85f3ae2e497a015efc90c9f174df";
    src = fetchgit {
      url = "https://codeberg.org/explosion-mental/wallust.git";
      rev = "59bfc2af698f85f3ae2e497a015efc90c9f174df";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-lGlmkog3Kmu9FIS1nq1YErkBsVlgunTA17wQx4aF/PQ=";
    };
    date = "2024-07-25";
  };
}
