#let script(
  font_size: 11pt,
  paragraph_spacing: 1.2em,
  line_spacing: 0.75em,
  page_margin: auto,
  body
) = {
  set page(
    "us-letter",
    margin: page_margin,
  )
  set text(size: font_size)
  set par(spacing: paragraph_spacing, leading: line_spacing)
  show heading: set align(center)
  body
}

// Character name
#let c(body) = {
  if body != [] {
    [#h(text.size/1.75) *#body*\ ]
  } else {
    []
  }
}
// Scene
#let cue(body) = box(baseline: 25%, rect(stroke: 0.875pt, body))
// DCA X, with optional character name on the end
#let dx(dca, body) = context [#box(baseline: 25%, circle(radius: text.size/2 + 2pt, stroke: 0.75pt)[#align(center+horizon)[*#dca*]]) #c(body)]
#let dX(body) = dx([?], body)
#let d1(body) = dx(1, body)
#let d2(body) = dx(2, body)
#let d3(body) = dx(3, body)
#let d4(body) = dx(4, body)
#let d5(body) = dx(5, body)
#let d6(body) = dx(6, body)
#let d7(body) = dx(7, body)
#let d8(body) = dx(8, body)
#let d9(body) = dx(9, body)
#let d10(body) = dx(10, body)
#let d11(body) = dx(11, body)
#let d12(body) = dx(12, body)
#let d13(body) = dx(13, body)
#let d14(body) = dx(14, body)
#let d15(body) = dx(15, body)
#let d16(body) = dx(16, body)
// Original page number
#let tpp(body) = place(right, dx: 0%)[#smallcaps[_tpp.#body _]]
#let bpp(body) = place(right, dx: 0%)[#smallcaps[_bpp.#body _]]
