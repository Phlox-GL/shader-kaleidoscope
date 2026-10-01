
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/ |respo-markdown.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (store)
            ; println |Store store $ option:unwrap-or (get store :tab) nil
            let
                cursor $ []
                states $ option:unwrap-or (get store :states) nil
                tab $ either
                  option:unwrap-or (get store :tab) nil
                  , :kaleidoscope
              container
                {} $ :position $ [] -200 -100
                comp-kaleidoscope $ >> states :kaleidoscope
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
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
          :code $ quote $ defn comp-kaleidoscope (states)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ or
                  option:unwrap-or (get states :data) nil
                  {} (:n 1) (:scale 0.5) (:parts 2.5) (:radius 0.4) (:regress 1)
                    :rotate $ noted "|bad name, it's skewing and ratating the reflection" 0
                    :spin $ noted "|rotate background image" 0
                    :shape-spin $ noted "|rotate whole scene" 0
                    :move-x $ noted "|move shape horizontally" 0
                    :shift $ [] 100 100
                    :spin-position $ [] 200 -240
                    :shape-spin-position $ [] 200 -120
                    :skip 0
                shift $ option:unwrap-or (get state :shift) nil
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
                    :n $ option:unwrap-or (get state :n) nil
                    :shift $ js-array
                      * 0.01 $ option:unwrap-or (nth shift 0) 0
                      * 0.01 $ option:unwrap-or (nth shift 1) 0
                    :colorTexture $ .!from PIXI/Texture $ if
                      phlox.core/ffi-nullish? $ file-image-src
                      , |https://cdn.tiye.me/logo/tiye.jpg (file-image-src)
                    ; :color2Texture $ .!from PIXI/Texture |https://cdn.tiye.me/logo/tiye.jpg
                    :scale $ option:unwrap-or (get state :scale) nil
                    :parts $ option:unwrap-or (get state :parts) nil
                    :radius $ option:unwrap-or (get state :radius) nil
                    :regress $ option:unwrap-or (get state :regress) nil
                    :spin $ option:unwrap-or (get state :spin) nil
                    :moveX $ option:unwrap-or (get state :move-x) nil
                    :shapeSpin $ option:unwrap-or (get state :shape-spin) nil
                    :skip $ option:unwrap-or (get state :skip) nil
                group
                  {} $ :position $ [] 520 0
                  comp-spin-slider (>> states :parts)
                    {} (:label |Parts) (:unit 0.08) (:min 1.9) (:max 12)
                      :position $ [] 80 -240
                      ; :fill $ hslx 50 90 70
                      ; :color $ hslx 200 90 30
                      :value $ option:unwrap-or (get state :parts) nil
                      :fraction 3
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :parts value
                  comp-slider (>> states :scale)
                    {} (:title |scale) (:unit 0.01) (:min 0.2) (:max 5.0)
                      :position $ [] 0 -160
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ option:unwrap-or (get state :scale) nil
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :scale value
                  comp-slider (>> states :radius)
                    {} (:title |radius) (:unit 0.01) (:min 0.02) (:max 2)
                      :position $ [] 0 -100
                      :fill $ hslx 50 90 70
                      :color $ hslx 200 90 30
                      :value $ option:unwrap-or (get state :radius) nil
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :radius value
                  comp-slider (>> states :regress)
                    {} (:title |regress) (:unit 0.01) (:min 0.2) (:max 2)
                      :position $ [] 0 -40
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ option:unwrap-or (get state :regress) nil
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :regress value
                  comp-slider (>> states :move-x)
                    {} (:title |move-x) (:unit 1)
                      :position $ [] 0 20
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ option:unwrap-or (get state :move-x) nil
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :move-x value
                  comp-slider-point (>> states :skip)
                    {} (:title |toss) (:unit 0.001) (:min -0.2) (:max 0.2)
                      :position $ [] 0 80
                      :fill $ hslx 50 90 40
                      :color $ hslx 200 60 90
                      :value $ option:unwrap-or (get state :skip) nil
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :skip value
                  comp-spin-slider (>> states :spin)
                    {} (:unit 1) (:min 0) (:max nil) (:fraction 1) (:label "|Texture spin")
                      :position $ option:unwrap-or (get state :spin-position) nil
                      ; :fill $ hslx 50 90 70
                      ; :color $ hslx 200 90 30
                      :value $ option:unwrap-or (get state :spin) nil
                      :on-change $ fn (value d!)
                        d! cursor $ assoc state :spin value
                      :on-move $ fn (pos d!)
                        d! cursor $ assoc state :spin-position pos
                  comp-spin-slider (>> states :shape-spin)
                    {} (:unit 0.5) (:min 0) (:max nil) (:fraction 1) (:label "|Shape spin")
                      :position $ option:unwrap-or (get state :shape-spin-position) nil
                      ; :fill $ hslx 250 90 80
                      ; :color $ hslx 200 90 30
                      :value $ option:unwrap-or (get state :shape-spin) nil
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
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'create-file-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-file-image ()
            unsafe-coerce (new js/Image) 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'file-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def file-image (create-file-image)
          :examples $ []
          :schema $ :: 'Dynamic
        'file-image-src $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn file-image-src ()
            ffi/expect-string |file-image.src $ ffi/object-field |file-image file-image |src
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
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
    'app.comp.navbar $ %{} 'FileEntry
      :defs $ {}
        'FileReaderHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileReaderHost (:onload 'Dynamic) (:onerror 'Dynamic)
            .readAsDataURL $ :: 'Fn $ {}
              :args $ [] 'FileReaderHost 'JsObject
              :return 'Dynamic
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'ImageHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ImageHost (:src 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'comp-help-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-help-menu ()
            div
              {} $ :style style-menu
              div
                {} $ :style $ {} (:overflow :auto) (:height |100%) (:padding 16)
                comp-md-block (inline-file |README.md) ({})
                =< nil 120
              span $ {} (:class-name style-close) (:inner-text "|✕")
                :on-click $ fn (e d!) (d! :toggle-help nil)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-navbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navbar (store)
            div
              {} $ :style style-navbar
              div
                {} $ :style ui/column
                div ({})
                  button $ {} (:inner-text "|Usages(用法)") (:style ui/button)
                    :on-click $ fn (e d!) (d! :toggle-help nil)
                =< nil 6
                div ({})
                  input $ {} (:type |file)
                    :accept "|image/apng, image/avif, image/gif, image/jpeg, image/png, image/svg+xml, image/webp"
                    :on-change $ fn (e d!)
                      let
                          event $ option:unwrap-or (get e :event) nil
                        let
                            file $ ffi-event-file event
                            reader $ unsafe-coerce (new js/FileReader) FileReaderHost
                          set! (.-onload reader)
                            fn (e)
                              ffi-set-image-src! $ ffi-event-result e
                              flipped js/setTimeout 100 $ fn () $ d! :touch nil
                          set! (.-onerror reader)
                            fn (e) (js/console.error "|Failed to load image" e)
                          .!readAsDataURL reader file
                if
                  option:unwrap-or (get store :show-help?) nil
                  comp-help-menu
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'ffi-event-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ffi-event-file (event)
            let
                target $ ffi/expect-object |event.target $ ffi/object-field |event
                  unsafe-coerce event $ :: 'JsNullish 'JsObject
                  , |target
                files $ ffi/expect-object |event.target.files $ ffi/object-field |event.target target |files
              ffi/expect-object |event.target.files.0 $ ffi/object-field |event.target.files files |0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'ffi-event-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ffi-event-result (event)
            let
                target $ ffi/expect-object |event.target $ ffi/object-field |event
                  unsafe-coerce event $ :: 'JsNullish 'JsObject
                  , |target
              ffi/expect-string |event.target.result $ ffi/object-field |event.target target |result
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'ffi-set-image-src! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ffi-set-image-src! (value)
            set!
              .-src $ unsafe-coerce file-image ImageHost
              , value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'inline-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-file (path)
            read-file $ str path
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] $ :: 'Expr 'String
        'style-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-close
            {}
              |$0 $ {} (:position :absolute) (:top 16) (:right 16) (:color :red) (:font-size 20) (:font-weight 100) (:line-height |20px) (:cursor :pointer) (:opacity 0.6) (:transition-duration |200ms)
              |$0:hover $ {} $ :opacity 1
              |$0:active $ {} $ :transform "|scale(1.2)"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-menu
            {} (:position :fixed) (:bottom 40) (:border-radius |4px) (:right 8) (:width |60vw) (:height |70%)
              :background $ hsl 0 0 100 $ Option :some 0.94
          :examples $ []
          :schema $ :: 'Dynamic
        'style-navbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-navbar
            merge ui/global $ {} (:position :absolute) (:bottom 0) (:right 0) (:border-radius |4px) (:padding "|8px 8px") (:max-width 240)
              :background-color $ hsl 0 0 100 $ Option :some 0.6
          :examples $ []
          :schema $ :: 'Dynamic
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
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'inline-shader $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-shader (name)
            read-file $ str |shaders/ name
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] $ :: 'Expr 'String
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/phlox/) (:title |Phlox) (:icon |http://cdn.tiye.me/logo/quamolit.png) (:storage-key |phlox)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ |mobile-detect :default mobile-detect
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'FontFaceObserverHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FontFaceObserverHost
            .load $ :: 'Fn $ {}
              :args $ [] 'FontFaceObserverHost
              :return 'Dynamic
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'detect-mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-mount-target ()
            unsafe-coerce (js/document.querySelector |.dom-app) 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'load-font! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-font! ()
            .!load $ unsafe-coerce (new FontFaceObserver "||Josefin Sans") FontFaceObserverHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            -> (load-font!)
              phlox.core/ffi-then $ fn (event) (render-app!)
                flipped js/setTimeout 200 $ fn () $ dispatch! (:: :touch)
            add-watch *store :change $ fn (store prev) (render-app!)
            when mobile? (render-control!) (start-control-loop! 8 on-control-event)
            println "||App Started"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (detect-mount-target)
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (clear-phlox-caches!) (remove-watch *store :change)
                add-watch *store :change $ fn (store prev) (render-app!)
                render-app!
                when mobile? $ replace-control-loop! 8 on-control-event
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (arg)
            respo/render! mount-target (comp-navbar @*store) dispatch!
            render! (comp-container @*store) dispatch! $ option:unwrap-or arg $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Option 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (|pixi.js :as PIXI)
            phlox.core :refer $ render! clear-phlox-caches! update-viewer! on-control-event
            app.comp.container :refer $ comp-container
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
            |nanoid :refer $ nanoid
            app.updater :refer $ updater
            |fontfaceobserver-es :default FontFaceObserver
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
            app.store :refer $ *store dispatch!
            respo.core :as respo
            app.comp.navbar :refer $ comp-navbar
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {}
              :states $ {}
              :cursor $ []
              :n 0
              :show-help? false
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.store $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store schema/store
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and dev? $ match op
                (:states cursor state) false
                _ true
              println |dispatch! op
            let
                op-id nanoid
                op-time $ unsafe-coerce (js/Date.now) 'Number
              reset! *store $ updater @*store op op-id op-time
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.store
          :require
            app.updater :refer $ updater
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
            |nanoid :refer $ nanoid
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:touch)
                assoc store :n $ inc $ unsafe-coerce
                  option:unwrap-or (get store :n) 0
                  , 'Number
              (:states cursor s) (update-states store cursor s)
              (:toggle-help)
                assoc store :show-help? $ not $ unsafe-coerce
                  option:unwrap-or (get store :show-help?) false
                  , 'Bool
              (:hydrate-storage op-data) op-data
              _ $ do (eprintln |unknown op op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Enum 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ [] phlox.cursor :refer $ [] update-states
