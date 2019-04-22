# vue-router-invoke-webpack-plugin

详细用法说明见[传送门](https://github.com/Qymh/vue-router-invoke-webpack-plugin/blob/dev/README.md)

## 特性
- 支持`view`同级路径下，添加**静态文件，如.less,.css,.png等**，详见[源码](https://github.com/cklwblove/vue-router-invoke-webpack-plugin/blob/master/core/ast.js#L24)
如下：
```
src
├── views
│   ├── Login
│   │   └── Index.vue
|   |   └── style.less
│   └── User
│       ├── Account
│       │   └── Index.vue
│       ├── Home
│       │   └── Index.vue
│       └── Index.vue
```
