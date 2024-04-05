
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-container (store)
              ; println "\"Store" store $ :tab store
              let
                  cursor $ []
                  states $ :states store
                  tab $ either (:tab store) :kaleidoscope
                container
                  {} $ :position ([] -200 -100)
                  comp-kaleidoscope $ >> states :kaleidoscope
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            phlox.core :refer $ g hslx rect circle text container graphics create-list >>
            phlox.comp.button :refer $ comp-button
            phlox.comp.drag-point :refer $ comp-drag-point
            respo-ui.core :as ui
            memof.alias :refer $ memof-call
            app.comp.kaleidoscope :refer $ comp-kaleidoscope
    |app.comp.kaleidoscope $ %{} :FileEntry
      :defs $ {}
        |comp-kaleidoscope $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-kaleidoscope (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} (:n 1) (:scale 0.5) (:parts 2.5) (:radius 0.4) (:regress 1)
                      :rotate $ noted "\"bad name, it's skewing and ratating the reflection" 0
                      :spin $ noted "\"rotate background image" 0
                      :shape-spin $ noted "\"rotate whole scene" 0
                      :move-x $ noted "\"move shape horizontally" 0
                      :shift $ [] 100 100
                      :spin-position $ [] 200 -240
                      :shape-spin-position $ [] 200 -120
                      :skip 0
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
                        * 0.01 $ nth shift 0
                        * 0.01 $ nth shift 1
                      :colorTexture $ .!from PIXI/Texture
                        if
                          blank? $ .-src file-image
                          , "\"https://cdn.tiye.me/logo/tiye.jpg" $ .-src file-image
                      ; :color2Texture $ .!from PIXI/Texture "\"https://cdn.tiye.me/logo/tiye.jpg"
                      :scale $ :scale state
                      :parts $ :parts state
                      :radius $ :radius state
                      :regress $ :regress state
                      :spin $ :spin state
                      :moveX $ :move-x state
                      :shapeSpin $ :shape-spin state
                      :skip $ :skip state
                  group
                    {} $ :position ([] 520 0)
                    comp-spin-slider (>> states :parts)
                      {} (:label "\"Parts") (:unit 0.08) (:min 1.9) (:max 12)
                        :position $ [] 80 -240
                        ; :fill $ hslx 50 90 70
                        ; :color $ hslx 200 90 30
                        :value $ :parts state
                        :fraction 3
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :parts value
                    comp-slider (>> states :scale)
                      {} (:title "\"scale") (:unit 0.01) (:min 0.2) (:max 5.0)
                        :position $ [] 0 -160
                        :fill $ hslx 50 90 70
                        :color $ hslx 200 90 30
                        :value $ :scale state
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :scale value
                    comp-slider (>> states :radius)
                      {} (:title "\"radius") (:unit 0.01) (:min 0.02) (:max 2)
                        :position $ [] 0 -100
                        :fill $ hslx 50 90 70
                        :color $ hslx 200 90 30
                        :value $ :radius state
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :radius value
                    comp-slider (>> states :regress)
                      {} (:title "\"regress") (:unit 0.01) (:min 0.2) (:max 2)
                        :position $ [] 0 -40
                        :fill $ hslx 50 90 40
                        :color $ hslx 200 60 90
                        :value $ :regress state
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :regress value
                    comp-slider (>> states :move-x)
                      {} (:title "\"move-x") (:unit 1)
                        :position $ [] 0 20
                        :fill $ hslx 50 90 40
                        :color $ hslx 200 60 90
                        :value $ :move-x state
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :move-x value
                    comp-slider-point (>> states :skip)
                      {} (:title "\"toss") (:unit 0.001) (:min -0.2) (:max 0.2)
                        :position $ [] 0 80
                        :fill $ hslx 50 90 40
                        :color $ hslx 200 60 90
                        :value $ :skip state
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :skip value
                    comp-spin-slider (>> states :spin)
                      {} (:unit 1) (:min 0) (:max nil) (:fraction 1) (:label "\"Texture spin")
                        :position $ :spin-position state
                        ; :fill $ hslx 50 90 70
                        ; :color $ hslx 200 90 30
                        :value $ :spin state
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :spin value
                        :on-move $ fn (pos d!)
                          d! cursor $ assoc state :spin-position pos
                    comp-spin-slider (>> states :shape-spin)
                      {} (:unit 0.5) (:min 0) (:max nil) (:fraction 1) (:label "\"Shape spin")
                        :position $ :shape-spin-position state
                        ; :fill $ hslx 250 90 80
                        ; :color $ hslx 200 90 30
                        :value $ :shape-spin state
                        :on-change $ fn (value d!)
                          d! cursor $ assoc state :shape-spin value
                        :on-move $ fn (pos d!)
                          d! cursor $ assoc state :shape-spin-position pos
                        , ()
                    comp-drag-point (>> states :p3)
                      {} (:position shift) (:unit 0.5) (:radius 12)
                        :fill $ hslx 30 90 80
                        ; :color $ hslx 0 90 100
                        :alpha 1
                        :hide-text? true
                        :on-change $ fn (position d!)
                          d! cursor $ assoc state :shift position
        |file-image $ %{} :CodeEntry (:doc |)
          :code $ quote
            def file-image $ new js/Image
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.kaleidoscope $ :require
            phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh group
            phlox.comp.button :refer $ comp-button
            phlox.comp.drag-point :refer $ comp-drag-point
            phlox.comp.slider :refer $ comp-slider comp-spin-slider comp-slider-point
            respo-ui.core :as ui
            memof.alias :refer $ memof-call
            app.config :refer $ inline-shader
            "\"pixi.js" :as PIXI
            app.store :refer $ dispatch!
    |app.comp.navbar $ %{} :FileEntry
      :defs $ {}
        |comp-help-menu $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-help-menu () $ div
              {} $ :style style-menu
              div
                {} $ :style
                  {} (:overflow :auto) (:height "\"100%") (:padding 16)
                comp-md-block (inline-file "\"README.md") ({})
                =< nil 120
              span $ {} (:class-name style-close) (:inner-text "\"✕")
                :on-click $ fn (e d!) (d! :toggle-help nil)
        |comp-navbar $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-navbar (store)
              div
                {} $ :style style-navbar
                div
                  {} $ :style ui/column
                  div ({})
                    button $ {} (:inner-text "\"Usages(用法)") (:style ui/button)
                      :on-click $ fn (e d!) (d! :toggle-help nil)
                  =< nil 6
                  div ({})
                    input $ {} (:type "\"file") (:accept "\"image/apng, image/avif, image/gif, image/jpeg, image/png, image/svg+xml, image/webp")
                      :on-change $ fn (e d!)
                        let
                            event $ :event e
                          let
                              file $ -> event .-target .-files .-0
                              reader $ new js/FileReader
                            set! (.-onload reader)
                              fn (e)
                                set! (.-src file-image) (-> e .-target .-result)
                                flipped js/setTimeout 100 $ fn () (d! :touch nil)
                            set! (.-onerror reader)
                              fn (e) (js/console.error "\"Failed to load image" e)
                            .!readAsDataURL reader file
                  if (:show-help? store) (comp-help-menu)
        |inline-file $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro inline-file (path) (read-file path)
        |style-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-close $ {}
              "\"$0" $ {} (:position :absolute) (:top 16) (:right 16) (:color :red) (:font-size 20) (:font-weight 100) (:line-height "\"20px") (:cursor :pointer) (:opacity 0.6) (:transition-duration "\"200ms")
              "\"$0:hover" $ {} (:opacity 1)
              "\"$0:active" $ {} (:transform "\"scale(1.2)")
        |style-menu $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-menu $ {} (:position :fixed) (:bottom 40) (:border-radius "\"4px") (:right 8) (:width "\"60vw") (:height "\"70%")
              :background $ hsl 0 0 100 0.94
        |style-navbar $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-navbar $ merge ui/global
              {} (:position :absolute) (:bottom 0) (:right 0) (:border-radius "\"4px") (:padding "\"8px 8px") (:max-width 240)
                :background-color $ hsl 0 0 100 0.6
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.navbar $ :require
            respo.core :refer $ defcomp div <> input button img span
            app.comp.kaleidoscope :refer $ file-image
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.core :refer $ hsl
            respo-md.comp.md :refer $ comp-md-block
            respo.css :refer $ defstyle
    |app.config $ %{} :FileEntry
      :defs $ {}
        |inline-shader $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro inline-shader (name)
              read-file $ str "\"shaders/" name
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/phlox/") (:title "\"Phlox") (:icon "\"http://cdn.tiye.me/logo/quamolit.png") (:storage-key "\"phlox")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.config $ :require ("\"mobile-detect" :default mobile-detect)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (; js/console.log PIXI)
              if dev? $ load-console-formatter!
              -> (new FontFaceObserver "\"Josefin Sans") (.!load)
                .!then $ fn (event) (render-app!)
                  flipped js/setTimeout 200 $ fn ()
                    dispatch! $ :: :touch
              add-watch *store :change $ fn (store prev) (render-app!)
              when mobile? (render-control!) (start-control-loop! 8 on-control-event)
              println "\"App Started"
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector "\".dom-app"
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (clear-phlox-caches!) (remove-watch *store :change)
                add-watch *store :change $ fn (store prev) (render-app!)
                render-app!
                when mobile? $ replace-control-loop! 8 on-control-event
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! (? arg)
              respo/render! mount-target (comp-navbar @*store) dispatch!
              render! (comp-container @*store) dispatch! $ or arg ({})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require ("\"pixi.js" :as PIXI)
            phlox.core :refer $ render! clear-phlox-caches! update-viewer! on-control-event
            app.comp.container :refer $ comp-container
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
            "\"nanoid" :refer $ nanoid
            app.updater :refer $ updater
            "\"fontfaceobserver-es" :default FontFaceObserver
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
            touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
            app.store :refer $ *store dispatch!
            respo.core :as respo
            app.comp.navbar :refer $ comp-navbar
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :cursor $ []
              :n 0
              :show-help? false
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.store $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and dev? $ not= (nth op 0) :states
                println "\"dispatch!" op
              let
                  op-id $ nanoid
                  op-time $ js/Date.now
                reset! *store $ updater @*store op op-id op-time
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.store $ :require
            app.updater :refer $ updater
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
            "\"nanoid" :refer $ nanoid
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :touch
                  update store :n inc
                (:states cursor s) (update-states store cursor s)
                (:toggle-help) (update store :show-help? not)
                (:hydrate-storage op-data) op-data
                _ $ do (eprintln "\"unknown op" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] phlox.cursor :refer $ [] update-states
