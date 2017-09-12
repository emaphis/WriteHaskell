-- UsePictures.hs  - Chapter 2 exercises


module UsePictures where

import PicturesSVG

-- render Pic  -- graphical SVG version - view in browser
-- printPicture Pic -- text output on terminal


-- Ex 2.1 - Define a module UsePictures which imports Pictures
-- (or PicturesSVG) and contains definitions of whiteHorse and
-- rotateHorse which can use the definitions imported from the
-- pictures module.
-- In the remaining questions you are expected to add other
-- definitions to your module UsePictures.

whiteHorse :: Picture
whiteHorse = invertColour horse

rotateHorse :: Picture -> Picture
rotateHorse p = flipV (flipH p)


-- 2.2 How could you make the picture - 2x2 checker board

checker2x2 :: Picture
checker2x2 = (white `beside` black)
             `above`
             (black `beside` white)

-- 8x8 checker board

checkerBoard :: Picture
checkerBoard =
  (checker2x2 `beside` checker2x2)
  `above`
  (checker2x2 `beside` checker2x2)


-- 2.3 - Three variants

pic1, pic2, pic3, pic4 :: Picture

pic1 = (horse `beside` whiteHorse)
       `above`
       (whiteHorse `beside` horse)

pic2 = (horse `beside` whiteHorse)
       `above`
       ((flipV whiteHorse) `beside` (flipV horse))

pic3 = (horse `beside` whiteHorse)
       `above`
       ((rotateHorse whiteHorse) `beside` (rotateHorse horse))

-- 2.4 - Another variant

pic4 = (horse `beside` whiteHorse)
       `above`
       ((flipH whiteHorse) `beside` (flipH horse))
