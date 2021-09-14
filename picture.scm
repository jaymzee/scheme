#lang sicp
(#%require sicp-pict)

;; paint-hires / paint-hi-res renamed to just paint
(paint (below (beside diagonal-shading
                      (rotate90 diagonal-shading))
              (beside (rotate270 diagonal-shading)
                      (rotate180 diagonal-shading))))

(display (read))