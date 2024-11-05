# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  hyprcursor = {
    pname = "hyprcursor";
    version = "0264e698149fcb857a66a53018157b41f8d97bb0";
    src = fetchFromGitHub {
      owner = "hyprwm";
      repo = "hyprcursor";
      rev = "0264e698149fcb857a66a53018157b41f8d97bb0";
      fetchSubmodules = false;
      sha256 = "sha256-EDNAU9AYcx8OupUzbTbWE1d3HYdeG0wO6Msg3iL1muk=";
    };
    date = "2024-10-11";
  };
  hyprlock = {
    pname = "hyprlock";
    version = "edbecc87081756b45bdbea16b63e413473659dcd";
    src = fetchFromGitHub {
      owner = "hyprwm";
      repo = "hyprlock";
      rev = "edbecc87081756b45bdbea16b63e413473659dcd";
      fetchSubmodules = false;
      sha256 = "sha256-jh7PhejwT+XqkkYnpZ6K/Gkqy4tvjN7g/ZBTvlS+Q9Y=";
    };
    date = "2024-10-27";
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
    version = "571f0b6ba57e5bf9466b65ad8e7949ed198a2b02";
    src = fetchgit {
      url = "https://codeberg.org/explosion-mental/wallust.git";
      rev = "571f0b6ba57e5bf9466b65ad8e7949ed198a2b02";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-KsqpIqPFuxMXAQmiWL7dPk7RIew4Oj1PnmgDizUjJMU=";
    };
    date = "2024-10-21";
  };
}
