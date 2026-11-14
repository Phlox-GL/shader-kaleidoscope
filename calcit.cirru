
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/ |respo-markdown.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/UiOp
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (store)
            container
              {} $ :position $ [] -200 -100
              comp-kaleidoscope
                decode-map-as
                  >> (:controls store) :kaleidoscope
                  Map respo.schema/CoordKey app.schema/ControlNode
                :sketch store
          :examples $ []
          :schema $ quote $ Fn app.schema/Store (-> phlox.schema/PhloxElement)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            phlox.core :refer $ g hslx rect circle text container graphics create-list >>
            phlox.comp.button :refer $ comp-button
            phlox.comp.drag-point :refer $ comp-drag-point
            respo-ui.core :as ui
            app.comp.kaleidoscope :refer $ comp-kaleidoscope
    'app.comp.kaleidoscope $ %{} 'FileEntry
      :defs $ {}
        'comp-kaleidoscope $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-kaleidoscope (states state)
            let
                shift $ :shift state
              group ({})
                mesh $ {}
                  :position $ [] 100 100
                  :geometry $ {}
                    :attributes $ []
                      {} (:id |aVertexPosition) (:size 2)
                        :buffer $ [] -400 -400 400 -400 400 400 -400 400
                      {} (:id |aUvs) (:size 2)
                        :buffer $ [] -1 -1 1 -1 1 1 -1 1
                    :index $ [] 0 1 2 0 3 2
                  :shader $ {}
                    :vertex-source $ inline-shader |kaleidoscope.vert
                    :fragment-source $ inline-shader |kaleidoscope.frag
                  :draw-mode :triangles
                  :uniforms $ js-object
                    :n $ :n state
                    :shift $ js-array
                      * 0.01 $ .unwrap-or (nth shift 0) 0
                      * 0.01 $ .unwrap-or (nth shift 1) 0
                    :colorTexture $ .!from PIXI/Texture $ if
                      = | $ file-image-src
                      , |https://cdn.tiye.me/logo/tiye.jpg file-image
                    ; :color2Texture $ .!from PIXI/Texture |https://cdn.tiye.me/logo/tiye.jpg
                    :scale $ :scale state
                    :parts $ :parts state
                    :radius $ :radius state
                    :regress $ :regress state
                    :spin $ :spin state
                    :moveX $ :move-x state
                    :shapeSpin $ :shape-spin state
                    :skip $ :skip state
                group
                  {} $ :position $ [] 520 0
                  comp-spin-slider (>> states :parts)
                    {} (:label |Parts) (:unit 0.08) (:min 1.9) (:max 12)
                      :position $ [] 80 -240
                      ; :fill $ hslx 50 90 70
                      ; :color $ hslx 200 90 30
                      :value $ :parts state
                      :fraction 3
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :parts value
                        , &unit
                  comp-slider (>> states :scale)
                    {} (:title |scale) (:unit 0.01) (:min 0.2) (:max 5.0)
                      :position $ [] 0 -160
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ :scale state
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :scale value
                        , &unit
                  comp-slider (>> states :radius)
                    {} (:title |radius) (:unit 0.01) (:min 0.02) (:max 2)
                      :position $ [] 0 -100
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ :radius state
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :radius value
                        , &unit
                  comp-slider (>> states :regress)
                    {} (:title |regress) (:unit 0.01) (:min 0.2) (:max 2)
                      :position $ [] 0 -40
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ :regress state
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :regress value
                        , &unit
                  comp-slider (>> states :move-x)
                    {} (:title |move-x) (:unit 1)
                      :position $ [] 0 20
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ :move-x state
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :move-x value
                        , &unit
                  comp-slider-point (>> states :skip)
                    {} (:title |toss) (:unit 0.001) (:min -0.2) (:max 0.2)
                      :position $ [] 0 80
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ :skip state
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :skip value
                        , &unit
                  comp-spin-slider (>> states :spin)
                    {} (:unit 1) (:min 0) (:max nil) (:fraction 1) (:label "|Texture spin")
                      :position $ :spin-position state
                      ; :fill $ hslx 50 90 70
                      ; :color $ hslx 200 90 30
                      :value $ :spin state
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :spin value
                        , &unit
                      :on-move $ fn (pos d!)
                        hint-fn $ Fn (List Number)
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :spin-position pos
                        , &unit
                  comp-spin-slider (>> states :shape-spin)
                    {} (:unit 0.5) (:min 0) (:max nil) (:fraction 1) (:label "|Shape spin")
                      :position $ :shape-spin-position state
                      ; :fill $ hslx 250 90 80
                      ; :color $ hslx 200 90 30
                      :value $ :shape-spin state
                      :on-change $ fn (value d!)
                        hint-fn $ Fn Number
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :shape-spin value
                        , &unit
                      :on-move $ fn (pos d!)
                        hint-fn $ Fn (List Number)
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :shape-spin-position pos
                        , &unit
                  comp-drag-point (>> states :p3)
                    {} (:position shift) (:unit 0.5) (:radius 12)
                      :fill $ hslx 30 90 80
                      ; :color $ hslx 0 90 100
                      :alpha 1
                      :hide-text? true
                      :on-change $ fn (position d!)
                        hint-fn $ Fn (List Number)
                          Fn app.schema/SketchOp $ -> Unit
                          -> Unit
                        d! $ app.schema/SketchOp :set-sketch $ &struct:assoc state :shift position
                        , &unit
          :examples $ []
          :schema $ quote $ Fn (Map respo.schema/CoordKey app.schema/ControlNode) app.schema/KaleidoscopeState (-> phlox.schema/PhloxElement) (:features :js-ffi)
        'create-file-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-file-image () (browser/image-create)
          :examples $ []
          :schema $ quote $ Fn (-> browser/ImageHost) (:features :js-ffi)
        'file-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def file-image (create-file-image)
          :examples $ []
          :schema $ quote browser/ImageHost
        'file-image-src $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn file-image-src ()
            ffi/expect-string |file-image.src $ ffi/object-field |file-image file-image |src
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.kaleidoscope
          :require
            phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh group
            phlox.comp.button :refer $ comp-button
            phlox.comp.drag-point :refer $ comp-drag-point
            phlox.comp.slider :refer $ comp-slider comp-spin-slider comp-slider-point
            respo-ui.core :as ui
            app.config :refer $ inline-shader
            app.store :refer $ dispatch!
            |pixi.js :as PIXI
            js-ffi.contract :as ffi
            js-ffi.browser :as browser
    'app.comp.navbar $ %{} 'FileEntry
      :defs $ {}
        'FileReaderHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileReaderHost
            :onload $ JsNullish $ Fn JsObject (-> Unit) (:async)
            :onerror $ JsNullish $ Fn JsObject (-> Unit)
            .readAsDataURL $ Fn FileReaderHost JsObject $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'comp-help-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-help-menu ()
            div
              {} $ :style style-menu
              div
                {} $ :style $ {} (:overflow :auto) (:height |100%) (:padding 16)
                comp-md-block (inline-file |README.md) ({})
                respo.comp.space/space-y 120
              span $ {} (:class-name style-close) (:inner-text "|✕")
                :on-click $ fn (e d!)
                  d! $ app.schema/UiOp :toggle-help
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'comp-navbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navbar (store)
            div
              {} $ :style style-navbar
              div
                {} $ :style ui/column
                div ({})
                  button $ {} (:inner-text "|Usages(用法)") (:style ui/button)
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/UiOp $ -> Unit
                        -> Unit
                        :features :js-ffi
                      d! $ app.schema/UiOp :toggle-help
                      , &unit
                respo.comp.space/space-y 6
                div ({})
                  input $ {} (:type |file)
                    :accept "|image/apng, image/avif, image/gif, image/jpeg, image/png, image/svg+xml, image/webp"
                    :on-change $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.schema/UiOp $ -> Unit
                        -> Unit
                        :features :js-ffi
                      let
                          event $ :event e
                        let
                            file $ ffi-event-file event
                            reader $ unsafe-coerce (new js/FileReader) FileReaderHost
                          set! (.-onload reader)
                            fn (e)
                              hint-fn $ Fn JsObject (-> Unit) (:features :js-ffi) (:async)
                              browser/image-src! file-image $ ffi-event-result e
                              match
                                js-await $ browser/image-decode! file-image
                                (:ok _)
                                  d! $ app.schema/UiOp :touch
                                (:err error) (js/console.error |Failed-to-decode-image error)
                              , &unit
                          set! (.-onerror reader)
                            fn (e) (js/console.error "|Failed to load image" e) &unit
                          .!readAsDataURL reader file
                      , &unit
                if (:show-help? store)
                  Some $ comp-help-menu
                  , None
          :examples $ []
          :schema $ quote $ Fn app.schema/Store (-> respo.schema/Component) (:features :js-ffi)
        'ffi-event-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ffi-event-file (event)
            let
                target $ ffi/expect-object |event.target $ ffi/object-field |event event |target
                files $ ffi/expect-object |event.target.files $ ffi/object-field |event.target target |files
              ffi/expect-object |event.target.files.0 $ ffi/object-field |event.target.files files |0
          :examples $ []
          :schema $ quote $ Fn respo.dom/DomEvent (-> JsObject) (:features :js-ffi)
        'ffi-event-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ffi-event-result (event)
            let
                target $ ffi/expect-object |event.target $ ffi/object-field |event event |target
              ffi/expect-string |event.target.result $ ffi/object-field |event.target target |result
          :examples $ []
          :schema $ quote $ Fn JsObject (-> String) (:features :js-ffi)
        'inline-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-file (path)
            read-file $ str path
          :examples $ []
          :schema $ quote $ Macro (Expr String)
            -> $ Expr String
            :capabilities :fs-read
        'style-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-close
            {}
              |$0 $ {} (:position :absolute) (:top 16) (:right 16) (:color :red) (:font-size 20) (:font-weight 100) (:line-height |20px) (:cursor :pointer) (:opacity 0.6) (:transition-duration |200ms)
              |$0:hover $ {} $ :opacity 1
              |$0:active $ {} $ :transform "|scale(1.2)"
          :examples $ []
          :schema $ quote $ Map String (Map Tag respo.schema/CssValue)
        'style-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-menu
            {} (:position :fixed) (:bottom 40) (:border-radius |4px) (:right 8) (:width |60vw) (:height |70%)
              :background $ hsl 0 0 100 $ Some 0.94
          :examples $ []
          :schema $ quote $ Map Tag respo.schema/CssValue
        'style-navbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-navbar
            merge ui/global $ {} (:position :absolute) (:bottom 0) (:right 0) (:border-radius |4px) (:padding "|8px 8px") (:max-width 240)
              :background-color $ hsl 0 0 100 $ Some 0.6
          :examples $ []
          :schema $ quote $ Map Tag respo-ui.schema/StyleValue
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navbar
          :require
            respo.core :refer $ defcomp div <> input button img span
            app.comp.kaleidoscope :refer $ file-image
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.core :refer $ hsl
            respo-md.comp.md :refer $ comp-md-block
            respo.css :refer $ defstyle
            js-ffi.contract :as ffi
            js-ffi.browser :as browser
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'inline-shader $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-shader (name)
            read-file $ str |shaders/ name
          :examples $ []
          :schema $ quote $ Macro (Expr String)
            -> $ Expr String
            :capabilities :fs-read
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/phlox/) (:title |Phlox) (:icon |http://cdn.tiye.me/logo/quamolit.png) (:storage-key |phlox)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ |mobile-detect :default mobile-detect
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'detect-mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-mount-target ()
            .unwrap $ dom/query-selector |.dom-app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'load-font! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-font! ()
            phlox.core/ffi-load-font $ new FontFaceObserver "|Josefin Sans"
          :examples $ []
          :schema $ quote $ Fn (-> phlox.core/PromiseHost) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            -> (load-font!)
              phlox.core/ffi-then $ fn (event) (render-app!)
                js/setTimeout
                  fn () $ dispatch! $ app.schema/UiOp :touch
                  , 200
            add-watch! *store :change $ fn (store prev) (render-app!)
            when mobile? (render-control!) (start-control-loop! 8 on-control-event)
            println "||App Started"
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (detect-mount-target)
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (clear-phlox-caches!) (remove-watch! *store :change)
                add-watch! *store :change $ fn (store prev) (render-app!)
                render-app!
                when mobile? $ replace-control-loop! 8 on-control-event
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            respo/render-with! mount-target
              fn () $ comp-navbar @*store
              fn (op)
                hint-fn $ Fn schema/UiOp $ -> Unit
                dispatch! op
            render! (comp-container @*store) app.store/dispatch-phlox! $ {}
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (|pixi.js :as PIXI)
            phlox.core :refer $ render! clear-phlox-caches! update-viewer! on-control-event
            app.comp.container :refer $ comp-container
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
            app.updater :refer $ updater
            |fontfaceobserver-es :default FontFaceObserver
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
            app.store :refer $ *store dispatch!
            respo.core :as respo
            app.comp.navbar :refer $ comp-navbar
            respo.ffi.browser :as dom
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ControlNode $ %{} 'CodeEntry
          :doc "|A pointer value or a nested branch of the Phlox control tree."
          :code $ quote $ defunion ControlNode WidgetValue (Map respo.schema/CoordKey ControlNode)
          :examples $ []
          :schema $ quote UnionDef
        'KaleidoscopeState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct KaleidoscopeState (:n Number) (:scale Number) (:parts Number) (:radius Number) (:regress Number) (:rotate Number) (:spin Number) (:shape-spin Number) (:move-x Number) (:skip Number)
            :shift $ List Number
            :spin-position $ List Number
            :shape-spin-position $ List Number
          :examples $ []
          :schema $ quote StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion Op SketchOp UiOp
          :examples $ []
          :schema $ quote UnionDef
        'SketchOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum SketchOp (:set-sketch app.schema/KaleidoscopeState)
          :examples $ []
          :schema $ quote EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :controls $ Map respo.schema/CoordKey ControlNode
            :sketch app.schema/KaleidoscopeState
            :n Number
            :show-help? Bool
          :examples $ []
          :schema $ quote StructDef
        'UiOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum UiOp
            :states (List respo.schema/CoordKey) (Map Tag WidgetValue)
            :touch
            :toggle-help
          :examples $ []
          :schema $ quote EnumDef
        'WidgetValue $ %{} 'CodeEntry
          :doc "|State fields emitted by the supported Phlox sliders and drag points."
          :code $ quote $ defunion WidgetValue Bool Number (List Number)
          :examples $ []
          :schema $ quote UnionDef
        'initial-sketch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-sketch
            KaleidoscopeState :n 1 :scale 0.5 :parts 2.5 :radius 0.4 :regress 1 :rotate
              noted "|bad name, it's skewing and ratating the reflection" 0
              , :spin (noted "|rotate background image" 0) :shape-spin (noted "|rotate whole scene" 0) :move-x (noted "|move shape horizontally" 0) :shift ([] 100 100) :spin-position ([] 200 -240) :shape-spin-position ([] 200 -120) :skip 0
          :examples $ []
          :schema $ quote KaleidoscopeState
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :controls ({}) :sketch initial-sketch :n 0 :show-help? false
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.store $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store schema/store
          :examples $ []
          :schema $ quote $ Ref schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *store $ updater @*store op
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :state)
        'dispatch-phlox! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-phlox! (raw)
            let
                kind $ if (enum? raw) (enum-definition raw) None
              cond
                  = kind $ Some app.schema/SketchOp
                  dispatch! $ decode-map-as raw 'app.schema/SketchOp
                (= kind (Some app.schema/UiOp))
                  dispatch! $ decode-map-as raw 'app.schema/UiOp
                true $ match raw
                  (:states cursor value)
                    dispatch! $ app.schema/UiOp :states
                      decode-map-as cursor $ List respo.schema/CoordKey
                      decode-map-as value $ Map Tag app.schema/WidgetValue
                  _ $ do (eprintln "|Unknown rendering operation" raw) &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn Input (-> Unit) (:generics Input) (:features :io :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.store
          :require
            app.updater :refer $ updater
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op)
            match op
              (app.schema/SketchOp drawing)
                match drawing $
                  :set-sketch state
                  &struct:assoc store :sketch state
              (app.schema/UiOp ui-op)
                match ui-op
                  (:touch)
                    &struct:assoc store :n $ inc $ :n store
                  (:toggle-help)
                    &struct:assoc store :show-help? $ not $ :show-help? store
                  (:states cursor data)
                    &struct:assoc store :controls $ decode-map-as
                      assoc-in (:controls store) (conj cursor :data) data
                      Map respo.schema/CoordKey app.schema/ControlNode
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op (-> app.schema/Store)
          :tests $ [] $ %{} 'TestEntry (:name |routes-controls-and-help)
            :code $ quote $ let
                initial app.schema/store
                changed $ updater initial $ app.schema/SketchOp :set-sketch (&struct:assoc app.schema/initial-sketch :scale 0.9)
                controls $ updater changed $ app.schema/UiOp :states ([] :kaleidoscope)
                  {} $ :scale 0.9
                nested $ updater controls $ app.schema/UiOp :states ([] :kaleidoscope :spin :move)
                  {} (:dragging? true)
                    :x0 $ [] 10 20
              assert= 0.9 $ :scale $ :sketch nested
              assert=
                {} $ :kaleidoscope $ {}
                  :data $ {} $ :scale 0.9
                  :spin $ {} $ :move
                    {} $ :data $ {} (:dragging? true)
                      :x0 $ [] 10 20
                :controls nested
              assert= 0.9 $ :scale $ :sketch changed
              assert=
                {} $ :kaleidoscope $ {}
                  :data $ {} $ :scale 0.9
                :controls controls
              assert= true $ :show-help? $ updater changed (app.schema/UiOp :toggle-help)
              assert= 1 $ :n $ updater changed (app.schema/UiOp :touch)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
