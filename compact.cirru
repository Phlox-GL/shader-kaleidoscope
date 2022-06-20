
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defn comp-container (store)
            ; println "\"Store" store $ :tab store
            let
                cursor $ []
                states $ :states store
                tab $ either (:tab store) :kaleidoscope
              container ({})
                comp-kaleidoscope $ >> states :kaleidoscope
      :ns $ quote
        ns app.comp.container $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >>
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.comp.kaleidoscope :refer $ comp-kaleidoscope
    |app.comp.kaleidoscope $ {}
      :defs $ {}
        |comp-kaleidoscope $ quote
          defn comp-kaleidoscope (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} (:n 1) (:scale 1) (:parts 3) (:radius 0.8) (:regress 1)
                    :rotate $ noted "\"bad name, it's skewing and ratating the reflection" 0
                    :spin $ noted "\"rotate background image" 0
                    :shape-spin $ noted "\"rotate whole scene" 0
                    :move-x $ noted "\"move shape horizontally" 0
                    :shift $ [] 40 80
                    :spin-position $ [] 200 -240
                    :shape-spin-position $ [] 200 -120
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
                        , "\"./assets/bricks.jpeg" $ .-src file-image
                    ; :color2Texture $ .!from PIXI/Texture "\"./assets/orange-flower.jpeg"
                    :scale $ :scale state
                    :parts $ :parts state
                    :radius $ :radius state
                    :regress $ :regress state
                    :toss $ :toss state
                    :spin $ :spin state
                    :moveX $ :move-x state
                    :shapeSpin $ :shape-spin state
                group
                  {} $ :position ([] 520 0)
                  comp-slider (>> states :parts)
                    {} (:title "\"parts") (:unit 0.005) (:min 1.9) (:max 12)
                      :position $ [] 0 -300
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ :parts state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :parts value
                  comp-slider (>> states :scale)
                    {} (:title "\"scale") (:unit 0.01) (:min 0.2) (:max 5.0)
                      :position $ [] 0 -240
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ :scale state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :scale value
                  comp-slider (>> states :radius)
                    {} (:title "\"radius") (:unit 0.01) (:min 0.02) (:max 2)
                      :position $ [] 0 -180
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ :radius state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :radius value
                  comp-slider (>> states :regress)
                    {} (:title "\"regress") (:unit 0.01) (:min 0.2) (:max 2)
                      :position $ [] 0 -120
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ :regress state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :regress value
                  comp-slider (>> states :move-x)
                    {} (:title "\"move-x") (:unit 1)
                      :position $ [] 0 -60
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ :move-x state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :move-x value
                  comp-slider-point (>> states :toss)
                    {} (:title "\"toss") (:unit 0.001) (:min 0) (:max 2)
                      :position $ [] 0 0
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ :toss state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :toss value
                  comp-spin-slider (>> states :spin)
                    {} (:unit 1) (:min 0) (:max nil) (:fraction 1)
                      :position $ :spin-position state
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ :spin state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :spin value
                      :on-move $ fn (pos d!)
                        d! cursor $ assoc state :spin-position pos
                  comp-spin-slider (>> states :shape-spin)
                    {} (:unit 0.5) (:min 0) (:max nil) (:fraction 1)
                      :position $ :shape-spin-position state
                      :fill $ hslx 250 90 80
                      :color $ hslx 200 90 30
                      :value $ :shape-spin state
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :shape-spin value
                      :on-move $ fn (pos d!)
                        d! cursor $ assoc state :shape-spin-position pos
                  comp-drag-point (>> states :p3)
                    {} (:position shift) (:unit 0.5) (:radius 12)
                      :fill $ hslx 30 90 80
                      ; :color $ hslx 0 90 100
                      :alpha 1
                      :hide-text? true
                      :on-change $ fn (position d!)
                        d! cursor $ assoc state :shift position
        |file-image $ quote
          def file-image $ let
              img $ new js/Image
            if-let
              old $ js/document.querySelector "\"input"
              .!remove old
            &let
              el $ js/document.createElement "\"input"
              -> el .-type $ set! "\"file"
              -> el .-accept $ set! "\"image/apng, image/avif, image/gif, image/jpeg, image/png, image/svg+xml, image/webp"
              js/document.body.appendChild el
              .!addEventListener el "\"change" $ fn (event)
                let
                    file $ -> event .-target .-files .-0
                    reader $ new js/FileReader
                  set! (.-onload reader)
                    fn (e)
                      set! (.-src img) (-> e .-target .-result)
                      flipped js/setTimeout 100 $ fn () (dispatch! :touch nil)
                  set! (.-onerror reader)
                    fn (e) (js/console.error "\"Failed to load image" e)
                  .!readAsDataURL reader file
              set! (.-className el) "\"visible"
              , el
            , img
      :ns $ quote
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
    |app.config $ {}
      :defs $ {}
        |inline-shader $ quote
          defmacro inline-shader (name)
            read-file $ str "\"shaders/" name
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/phlox/") (:title "\"Phlox") (:icon "\"http://cdn.tiye.me/logo/quamolit.png") (:storage-key "\"phlox")
      :ns $ quote
        ns app.config $ :require ("\"mobile-detect" :default mobile-detect)
    |app.main $ {}
      :defs $ {}
        |main! $ quote
          defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            -> (new FontFaceObserver "\"Josefin Sans") (.!load)
              .!then $ fn (event) (render-app!)
                flipped js/setTimeout 200 $ fn () (dispatch! :touch nil)
            add-watch *store :change $ fn (store prev) (render-app!)
            when mobile? (render-control!) (start-control-loop! 8 on-control-event)
            println "\"App Started"
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (clear-phlox-caches!) (remove-watch *store :change)
              add-watch *store :change $ fn (store prev) (render-app!)
              render-app!
              when mobile? $ replace-control-loop! 8 on-control-event
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! (? arg)
            render! (comp-container @*store) dispatch! $ or arg ({})
      :ns $ quote
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
    |app.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :cursor $ []
            :n 0
      :ns $ quote (ns app.schema)
    |app.store $ {}
      :defs $ {}
        |*store $ quote (defatom *store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and dev? $ not= op :states
              println "\"dispatch!" op op-data
            let
                op-id $ nanoid
                op-time $ js/Date.now
              reset! *store $ updater @*store op op-data op-id op-time
      :ns $ quote
        ns app.store $ :require
          app.updater :refer $ updater
          app.schema :as schema
          phlox.config :refer $ dev? mobile?
          "\"nanoid" :refer $ nanoid
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"unknown op" op op-data) store
              :touch $ update store :n inc
              :states $ update-states store op-data
              :hydrate-storage op-data
      :ns $ quote
        ns app.updater $ :require
          [] phlox.cursor :refer $ [] update-states
