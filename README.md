# New Athena's site converted and improved to Elm

## This project is based on [elm-vite-tailwind-4](https://github.com/stratis-vip/elm-vite-tailwindcss)

## Changes

### 2025-04-27

1. Create the repository
2. Correct some minor css problems, because of Flyon library
3. Correct components:
   * newsComponent
   * NavBarComponent
4. Add new components:
   * ChampionsComponent
5. Add new folder Data to keep all data files (for now, news, and champion tips.)
6. Webpack dev server can't manage urls, so i put in home url "/" the testing component.
Right now the Champions.

### 2025-04-29

1. Add rules data
2. Create rulesComponent
3. Webpack dev server current to rules.

### 2025-04-30

  1. Add a Section (title, children) component to keep the same behaviour on pages.
  2. Add a custom color in style.css (main). So, now -bg-main is the color!
  3. Remove CssConsts.elm. All css values going to style.css
  4. Change to newsComponent so it will have a title.

### 2025-05-01

  1. Succesfully remove "require" part of images!!!
  2. Adventures works correctly in guides
  3. Assorted tips are working in guides

### 2025-05-04

  1. Convert the project to vite.
  2. Remove webpack's complex confuguration
  3. Vite server can manage routes so no need for changes in routes.
  4. Removes news route (default to home "/").
  5. Add favicons.
