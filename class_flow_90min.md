# 90分実習進行案: bulk RNA-seq DEGでTh1のSLE signatureを読む

## ねらい

RやLinuxの習得ではなく、single-cell実習で行った「発現から細胞の意味を読む」体験を、bulk RNA-seqのDEG解析につなげる。

## 進行

0-10分: 前回までの復習

- single-cell: 1細胞ごとの発現からclusterの正体を考えた
- batch correction: 測定やサンプル由来のずれを補正する必要がある
- bulk RNA-seq: 細胞種ごと、群ごとの平均的な発現差を見る

10-20分: 免疫学の問いを置く

- SLEではI型IFN応答が上がることが多い
- 今回はTh1細胞に限定して、疾患差が遺伝子発現にどう現れるかを見る
- marker遺伝子を見る感覚で、DEGとIFN signatureを見る

20-35分: Colabセットアップと一括実行

- セル1で `R_lib.zip` とデータzipを自動取得
- まずはTh1のDEG解析を一括実行
- エラーが出た場合は、表示メッセージを教員に見せてもらう

35-55分: Th1のDEG結果を読む

- PCAでHC/SLEの分かれ方を見る
- Volcano plotでSLE上昇遺伝子を見る
- IFN関連遺伝子のenrichmentとheatmapを見る

55-70分: Hallmark pathway解析

- IFN 1セットのFisher検定から、複数pathwayへの拡張として説明
- `clusterProfiler::enricher()` とMSigDB Hallmark gene setsを使う
- dotplotで、SLE-up DEGに多いpathwayを読む

70-82分: 全体討論

- IFN signatureとHallmark pathway解析の結果はどうつながるか
- single-cellのmarker読みとbulk DEG読みの共通点、違い
- DEGは「原因」ではなく「状態の手がかり」であることを確認

82-90分: 出席提出

- 最後のセルで氏名を漢字入力
- `Sys.time()` の実行時刻が表示されることを確認
- ノートブックを `.ipynb` としてダウンロードし、学生用サイトにアップロード
