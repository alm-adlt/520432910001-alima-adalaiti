
## 第一次作业 
首先定义不同种类的单位基本图形（正方形，左/右侧三角形，圆形），通过不同的随机数字确定新的单位格中是什么图形(相关代码如下加粗部分)
```
 a=(int)random(0,4);
**if(a==0){//right triangle**
     fill(colors[(int)random(0,8)]);
     rect(x,y,50,50);
     fill(colors[(int)random(0,8)]);
     noStroke();
     triangle(x,y,x+50,y+50,x+50,y);}
**else if(a==1){//circle**
  fill(colors[(int)random(0,8)]);
  rect(x,y,50,50);
  fill(colors[(int)random(0,8)]);
  noStroke();
  ellipse(x+25,y+25,50,50);}
**else if(a==2){//rectangle**
  fill(colors[(int)random(0,8)]);
  noStroke();
  rect(x,y,50,50);}
**else if(a==3){//lefft triangle**
  fill(colors[(int)random(0,8)]);
  rect(x,y,50,50);
  fill(colors[(int)random(0,8)]);
  noStroke();
  triangle(x,y,x+50,y,x,y+50);}
  ```
  
  
每一个单位的图形都从设置好的颜色组中得到随机颜色和随机底色(相关代码如下)
```
     fill(colors[(int)random(0,8)]);
     rect(x,y,50,50);
     fill(colors[(int)random(0,8)]);
     
 ```
     

最终所有单位格聚在一起形成大的随机图形。
效果展示：

![](https://github.com/alm-adlt/homework/blob/main/image/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202021-09-27%20231321.jpg)
