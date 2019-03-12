--- 
documentclass: ltjsarticle  
title: my document
author: your name
toc: yes
toc-depth: 4
--- 

\clearpage

# 見出し1
## 見出し2
### 見出し3

```python
def function(a=1,b=2,c=3):
```

### 見出し3-2

```verilog
wire abc;
assign abc = 1;
reg def;
always @ (posedge clk or negedge resb) begin
    if (!resb) begin
       def <= 0;
    end
    else begin
       def <= ~def;
    end
end
```


  
```mermaid
gantt
title 作業日程
dateformat YYYY-MM-DD

section 設計
ブロック1 : code1,            , 4d
ブロック2 : code2, after code1, 5d
ブロック2 : code3, after code2, 5d
section 検証
ブロック1 : veri1, after code3, 4d
ブロック2 : veri2, after veri1, 5d
ブロック2 : veri3, after veri2, 5d
section 実機確認
```
