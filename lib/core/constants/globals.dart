import 'package:flutter/material.dart';

class SizeConfig {
  static double heightMultiplier(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height > size.width ? size.height : size.width;
    return height / 812;
  }

  static double widthMultiplier(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.height > size.width ? size.width : size.height;
    return width / 375;
  }
}

const kBackendDomain = '34.18.54.116:3001';
const kBaseBackendUrl = 'http://$kBackendDomain';

const kPlaceholderImage = 'https://placehold.co/200x200.png';
const kProfilePlaceHolder =
    "https://www.vhv.rs/dpng/d/505-5058560_person-placeholder-image-free-hd-png-download.png";
// const kProfilePlaceHolderFemale = "https://image.pngaaa.com/689/2189689-middle.png";

const kAnimalDefaultImage =
    'https://www.drusillas.co.uk/images/whats-on-card/redpanda-profile-400x400-984.jpg';
