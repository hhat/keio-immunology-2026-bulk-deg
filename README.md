# bulk RNA-seq DEG Colab materials

## Files

- `bulk_RNAseq_DEG_immunology_colab_student.ipynb`: 学生用Colabノートブック
- `instructor_make_R_lib_zip_on_colab.ipynb`: 講師用R_lib.zip作成ノートブック
- `instructor_make_R_lib_zip_on_colab.R`: 講師用R_lib.zip作成Rコード
- `bulk_deg_course_data.zip`: 学生用データzip
- `class_flow_90min.md`: 90分実習の進行案
- `upload_to_github_file_list.txt`: GitHubに置くファイルの一覧

## Data zip

- size: 11.3 MB
- SHA256: `d28ec8b6faa74612652f03b9a7d79a01653baef33c788625d75cbaeffbd00edc`
- samples: HC 20, SLE 20

## Before class

1. 講師用ノートブックをGoogle ColabのR runtimeで実行し、`/content/R_lib.zip` を作成する。
2. `R_lib.zip` と `bulk_deg_course_data.zip` をGoogle Driveの共有フォルダにアップロードする。
3. それぞれ「リンクを知っている全員が閲覧可」にする。
4. 学生用ノートブックをGitHubにpushし、Colab直リンクをLMSに置く。

## Notes

- `R_lib.zip` には `edgeR`, `ggplot2`, `ggrepel`, `pheatmap`, `clusterProfiler`, `enrichplot`, `msigdbr` が必要。
- `bulk_deg_course_data.zip` はGitHubからも自動取得できる。
- `R_lib.zip` は大きくなる可能性があるため、基本はGoogle Driveから取得する。
