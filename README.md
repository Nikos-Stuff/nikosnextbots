[![Build:](https://github.com/Nikos-Stuff/nikosnextbots/actions/workflows/build_packs.yml/badge.svg?branch=main)](https://github.com/Nikos-Stuff/nikosnextbots/actions/workflows/build_packs.yml)

![Preview Image](https://mcapi.nikodaproot.pl/nnb/nnb_banner.png)
<p align="center">Texturepack & Datapacks for our server - Niko's Nextbots - nnb.nikodaproot.pl </p>

<p align="center">Datapacks won't work on they own. Specific world setup is required. We don't have plans to upload the whole setup stuff. (For at least now)</p>



[Roadmap](https://github.com/orgs/Nikos-Stuff/projects/4)

## Description

Welcome to the Nico's Nextbots Texture Pack! This is the texture pack used in our server. Any edits in the master branch will be applied in our server. In that way, we can add new bots and features easier + with the help of community.

## Before we start....

A basic knowledge of understanding and editing .json files is required | [Learn More](https://minecraft.wiki/w/Font).
This used to be a part of the "VibeCraft" server. That's why the folder is named like that. Don't change the structure of this pack, even if its messy. This is planned for the v2.0 server version.

### Pack Structure
Most important folders:

- [Nextbots Textures](https://github.com/Nikos-Stuff/nikosnextbots/tree/main/main/assets/vibecraft/textures/nextbots)

Used for nextbot textures / animations. [Remember that you need to also implement it in the font file!](https://github.com/Nikos-Stuff/nikosnextbots/blob/main/main/assets/minecraft/font/default.json)
You also need to use unicode characters from [here](https://unicode.bayashi.net/?page=1900). (Make sure that they're not used already)

*Note: 256 x 256 .png format required. For animated bots please create a new folder and place frames inside (max 5 frames)*

- [Events Textures](https://github.com/Nikos-Stuff/nikosnextbots/tree/main/main/assets/vibecraft/textures/events)
 
Used for full screen events like angry munci etc.
[Remember that you need to also implement it in the font file!](https://github.com/Nikos-Stuff/nikosnextbots/blob/main/main/assets/minecraft/font/default.json)
You also need to use unicode characters from [here](https://unicode.bayashi.net/?page=1900). (Make sure that they're not used already)

*Note: 256 x 256 .png format required. Create a new folder and place the images inside (max 5 frames for animation)*

- [Sounds](https://github.com/Nikos-Stuff/nikosnextbots/tree/main/main/assets/vibecraft/sounds)

Please use the .ogg stereo or mono based on your need. For example:

- For a sound effect that plays use stereo

- For a nextbot sounds use mono

After everything done. Don't forget to add your sound to [sounds.json](https://github.com/Nikos-Stuff/nikosnextbots/blob/main/main/assets/vibecraft/sounds.json)!

*Note: Place your file in the correct folder. Don't make a mess!*

## Contributing

We welcome contributions to improve and expand this texture pack. If you'd like to contribute, follow these steps:

### Getting Started 
1. Fork the repository to your GitHub account.
2. Clone the forked repository to your local machine:
   ```sh
   git clone https://github.com/Nikos-Stuff/nikosnextbots.git
   ```
4. Create a new branch for your changes based on the `main` branch:
   ```sh
   git checkout -b main/your-changes
   ```
6. Make your modifications and improvements.

### Submitting Changes 
1. Commit your changes:
   ```sh
   git commit -m 'Add your meaningful commit message'
   ```
5. Push your branch to your forked repository:
   ```sh
   git push origin testing/your-changes
   ```
8. Open a pull request on our [Pull Requests](https://github.com/Nikos-Stuff/nikosnextbots/pulls) page.

## Issues

If you encounter any issues or have suggestions, please open an issue on the [Issues](https://github.com/Nikos-Stuff/nikosnextbots/issues) page.




## Terms

You're not allowed to directly download and copy our hard work. Please respect that....

But you can:

-- Use our mechanic / way of implementing bots to minecraft. I mean that's just a silly blocky game anyways. 

-- Contact me on discord and ask for help to make something similar.

    All Rights Reserved - Niko's Stuff Team
