(in-package :cepl.pipelines)
(in-readtable :fn.reader)

(defun-g stateless-quad-vertex-stage ()
  (values))

(defun-g stateless-quad-geometry-stage ()
  (declare (vari:output-primitive :kind :triangle-strip
                                  :max-vertices 6))
  (vari:emit ()
        (vari:vec4 -1 1 0 1)
        (vari:vec2 0 1))
  (vari:emit ()
        (vari:vec4 -1 -1 0 1)
        (vari:vec2 0 0))
  (vari:emit ()
        (vari:vec4 1 -1 0 1)
        (vari:vec2 1 0))
  (vari:end-primitive)
  (vari:emit ()
        (vari:vec4 -1 1 0 1)
        (vari:vec2 0 1))
  (vari:emit ()
        (vari:vec4 1 -1 0 1)
        (vari:vec2 1 0))
  (vari:emit ()
        (vari:vec4 1 1 0 1)
        (vari:vec2 1 1))
  (vari:end-primitive)
  (values))
