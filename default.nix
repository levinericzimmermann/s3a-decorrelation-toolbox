with import <nixpkgs> {};
with pkgs;
with pkgs.python38Packages;

let

    pyloudnorm = buildPythonPackage rec {
      name = "pyloudnorm";
      src = fetchPypi {
        pname = "pyloudnorm";
        version = "0.1.0";
        sha256 = "sha256-l8NwVMuwvci1Kz4oA2anHg2yBuJdC0jYz+hI1As3bXM=";
      };
      propagatedBuildInputs = [
          future
          numpy
          scipy
      ];
      doCheck = false;
    };


in

  buildPythonPackage rec {
    name = "s3a_decorrelation_toolbox";
    src = ./.;
    nativeCheckInputs = [];
    checkInputs = [];
    propagatedBuildInputs = [ 
      numpy
      scipy
      soundfile
      librosa
      acoustics
      pyloudnorm
      matplotlib
    ];
    doCheck = false;
  }
