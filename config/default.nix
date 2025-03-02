{
  # Import all your configuration modules here
  imports = [ ./mini.nix ];
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
  };
  globals = { mapleader = " "; };
}
