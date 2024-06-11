{ pkgs, ... }:
  pkgs.zed-editor.overrideAttrs (finalAttrs: previousAttrs: with pkgs; {
  version = "0.139.3-pre";
    
  src = fetchFromGitHub {
    owner = "zed-industries";
    repo = "zed";
    rev = "refs/tags/v${finalAttrs.version}";
    hash = "sha256-1shK+Q8LTRaIXDqDLdJVsB4sAg2u5Kz0NXKf5jCniOU=";
    fetchSubmodules = true;
  };

  doCheck = false; # takes long time

})
