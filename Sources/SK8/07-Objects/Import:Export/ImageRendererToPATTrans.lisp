;;; SK8 � 1997 by Apple Computer, Inc.
;;; The code in this file is protected under the terms of the current SK8 License.
;;; For information on this license, see http://sk8.research.apple.com
;;; Apple Computer, Inc. -- Apple Research Laboratories

(in-package :sk8dev)

(provide "IMAGERENDERERTOPPATTRANSLATOR")

(require "INDIRECTTRANSLATOR" "objects;Import/Export:IndirectTranslator")
(require "BWPATTERNTOPATTRANSLATOR" "objects;Import/Export:BWPatternToPATTranslator")

;;; ImageRendererToPATTranslator
;;; _________________________

(new IndirectTranslator :objectName "ImageRendererToPATTranslator" :project sk8
     :internalObject BWPattern
     :finalObject ImageRenderer
     :mediaTranslator BWPatternToPATTranslator)

(define-handler sk8::import (ImageRendererToPATTranslator &key source destination)
  (let ((theMedia (call-next-method)))
    (make-imageRenderer-from-new-media theMedia source destination)))


#|
	Change History (most recent last):
	2  	 2/27/97	Hernan  	
|# ;(do not edit past this line!!)
