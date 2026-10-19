# paper

ACL 格式论文稿(模板来自 [acl-org/acl-style-files](https://github.com/acl-org/acl-style-files),
上游 commit `d5adc82`, 2026-06-29)。

## 文件

| 文件 | 说明 |
|---|---|
| `main.tex` | 主文件(原 `acl_latex.tex`);`\usepackage[review]{acl}` 改为 `final` 出 camera-ready,`preprint` 出带页码非匿名版 |
| `acl.sty`, `acl_natbib.bst` | ACL 样式与参考文献样式,**不要改动** |
| `custom.bib` | 自己的参考文献 |
| `anthology.bib` | ACL Anthology 条目(上游示例,可按需换成完整版) |
| `sections/` | 分章节 `.tex`,在 `main.tex` 中 `\input{sections/xxx}` |
| `figures/` | 图 |
| `formatting.md`, `ACL_TEMPLATE_README.md` | 上游格式说明与 README |
| `latexmkrc` | `latexmk -pdf main.tex` 一键编译 |

## 本地编译

```bash
pdflatex main && bibtex main && pdflatex main && pdflatex main   # 集群上没有 latexmk
latexmk -pdf main.tex                                               # 有 latexmk 的机器
```

集群 TeX 缺 `inconsolata` 包,`main.tex` 里已改为存在才加载,不影响 Overleaf。

## Overleaf 同步

GitHub Sync 需要 Overleaf Premium / 机构账号;KCL 账号自带)。

1. Overleaf → **New Project → Import from GitHub**,选择本仓库。
2. 之后在 Overleaf 左侧 **Menu → GitHub** 面板里 **Pull / Push** 与 GitHub 双向同步。
3. 本地 `git pull` 后再 `git push`,避免冲突;两边不要同时改同一处。

Overleaf 编译器选 **pdfLaTeX**,主文件设为 `main.tex`。
