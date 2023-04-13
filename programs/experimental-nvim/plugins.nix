{
  pkgs,
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.plugins.lazy;
in {
  options = {
    plugins.lazy = {
      
    };
  };
}
