# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  goo-engine = {
    pname = "goo-engine";
    version = "c13bcaa193fafb9341697b98154533538830bc97";
    src = fetchFromGitHub {
      owner = "dillongoostudios";
      repo = "goo-engine";
      rev = "c13bcaa193fafb9341697b98154533538830bc97";
      fetchSubmodules = false;
      sha256 = "sha256-uXJHRfBjyKiEgyrZo9ZsdL/5YA/vaP6YZVJjUe3euk8=";
    };
    date = "2024-05-26";
  };
}
