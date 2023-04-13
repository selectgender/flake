{ pkgs, ... }: {
  home.packages = with pkgs; [
    git
  ]; 
  
  programs.git = {
    enable = true;
    userName = "Sylvia";
    userEmail = "sylviaviajung@gmail.com";
    aliases = {
      ci = "commit";
      co = "checkout";
      s = "status";
      l = "log --oneline";
    };
  };
}
