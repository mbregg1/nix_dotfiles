# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  goo-engine = {
    pname = "goo-engine";
    version = "8457395892beec33d4605ef9d894a1aff4a8d79f";
    src = fetchFromGitHub {
      owner = "dillongoostudios";
      repo = "goo-engine";
      rev = "8457395892beec33d4605ef9d894a1aff4a8d79f";
      fetchSubmodules = false;
      sha256 = "sha256-K/cHakGb+x2kvTVXl+8hRKPlwoSAyFxvU4+dHFs0PXQ=";
    };
    date = "2024-10-15";
  };
}
