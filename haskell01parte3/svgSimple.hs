import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 150 150 50 "rgb(139, 0, 139, 1.4)") ++ 
  (svgCircle 50 50 50 "rgb(255, 48, 48, 1.4)") ++ 
  (svgCircle 250 250 50 "rgb(0, 0, 238, 1.4)") ++ 
  (svgCircle 350 350 50 "rgb(105, 14, 30, 1.4)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
