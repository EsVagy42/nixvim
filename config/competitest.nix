{
  plugins = {
    competitest = {
      enable = true;
      settings = {
        compile_command = {
          cpp = {
            exec = "g++";
            args = [
              "-Wall"
              "$(FNAME)"
              "-o"
              "$(FNOEXT)"
              "-g"
              "-Wextra"
              "-Wshadow"
              "-Wconversion"
              "-Wfloat-equal"
              "-Wduplicated-cond"
              "-Wlogical-op"
            ];
          };
        };
      };
    };
  };
}
