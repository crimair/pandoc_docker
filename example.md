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
