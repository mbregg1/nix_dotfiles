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
    version = "578246b9967dec77c56993dc55ca192d35ba9bb7";
    src = fetchFromGitHub {
      owner = "hyprwm";
      repo = "hyprlock";
      rev = "578246b9967dec77c56993dc55ca192d35ba9bb7";
      fetchSubmodules = false;
      sha256 = "sha256-FbHP2io0nKSC0qEjTdAhrfmlqiv9oB1P/DcV3jFAnWY=";
    };
    date = "2024-11-19";
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
    version = "7ff46aa6fcbbb872b33da72325a8c341107293ea";
    src = fetchgit {
      url = "https://codeberg.org/explosion-mental/wallust.git";
      rev = "7ff46aa6fcbbb872b33da72325a8c341107293ea";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-oqrNcyOQuAeWsEqni2kzTwVOrF44YGNAuqXyBEEKGzc=";
    };
    date = "2024-11-09";
  };
}
