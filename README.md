## A shader and PIXI.js tool for rendering Kaleidoscopes

Demo https://r.tiye.me/Phlox-GL/shader-kaleidoscope/

Candidate migration uses paired Calcit/procs 0.30.1-alpha.5 with canonical `calcit.cirru` and `deps.cirru`;
CI rejects retired `compact.cirru` and `package.cirru`. The default entry emits
browser JavaScript. Config strings and operation arguments have explicit
Map/Enum contracts; existing open state and rendering boundaries remain.

本轮候选使用正式 Phlox 0.7.15、Markdown 0.4.57、Respo UI 0.7.41、Respo
0.16.122 和 js-ffi 0.2.3。绘图参数解码为 KaleidoscopeState，控件回调使用
单 Enum dispatch，仍按原 cursor 写入 Map；着色器及参数公式不变。修复 nanoid
未调用、旧 watch 名称、Unit 返回合同和 mount target 强转，DOM 查询使用 Respo
已发布接口。修正错误字体名与空图片源默认纹理；图片上传等待实际解码成功后
再重绘，删除固定 100ms 延时，避免黑屏直到下一次交互。
本地全定义 379/379、完整 strict、附着业务回归及生产构建通过；真实页面已验证
默认纹理启动、Scale 拖拽、帮助面板开关及合成图片上传自动重绘，无新增错误。
仍不宣称已完成正式 0.30.1、移动端双触点或生产验收。

PR previews use `pr/<number>/<run-id>/<attempt>/`. Vite and released COS Action v1.2.0 share the
base URL; HTML reference checks and public upload verification use the action itself without an extra checker.
Production prefixes and original server deployment paths remain unchanged.
Runs queue per PR and separately for production without cancellation. Before
production publishing, CI compares the run revision with current main once;
stale runs skip both COS and server publishing.

`yarn build` compiles the default JS entry and bundles once; `yarn release`
uses the same build. `yarn dev` compiles initially and starts Vite. Run
`calcit calcit.cirru -w` in another terminal for live edits, without concurrently.

### Usages

- Mouse Drag on point to move the shift position of image
- Mouse Drag on buttons to change: image scale, divide angles, radius of visible area for texture
- Click to upload a squared image as the texture
- Shift + Mouse Drag, to move canvas
- Shift + Wheel, to zoom in/out
- Hold two circles nearer to center of screen to fullscreen(disabled in desktops)

### 使用介绍

- Shift + 鼠标拖拽, 拖动画布 (触摸屏上是左侧菱形按钮)
- Shift + 鼠标滚轮, 缩放画布 (触摸屏上是右侧菱形按钮)
- 右下角上传文件可以替换背景图
- 触摸屏中, 同时按住操作按钮左右靠中间的圆点触发全屏(桌面版没有该功能)

几个按钮可以拖动控制各个参数,

- `parts` 为 3 对应万花筒三棱的效果, 也可以设置 4 或者 2.4 看是怎样的效果,
- 右侧两个按钮, 是拖动做顺时针/逆时针旋转, 控制图片和图形旋转的

### Videos

Output videos:

- https://space.bilibili.com/14227306/search/video?keyword=万花筒
- https://www.ixigua.com/home/3166205900759127/video/?keyword=万花筒&list_entrance=userdetail

### Workflow

https://github.com/Phlox-GL/phlox-workflow

### License

MIT
