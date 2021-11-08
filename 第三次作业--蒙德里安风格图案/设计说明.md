## 第三次作业 --蒙德里安风格图案

首先，根据观察到的蒙德里安作品的特点确定颜色：
一幅画中只有四种颜色（因画面中白色占面积最大，所以在色彩的数组中多放入一些白色，提高随机选中白色的概率）
```
  int colors[]={#FFFFFF,#FFFFFF,#FFFFFF,#BCBCBC,#7C7C7C,#363636};
```


利用循环体，每一次循环都随机生成不同宽度的长方形。
```
   a=int(random(0,width/4));
   b=int(random(0,height/3));
    w=w+a;
    stroke(0);
    strokeWeight(8);
```

每一行的矩形的高度都相同，但在生成对应的宽度之后，将最新生成的矩形的长和宽进行比较，根据不同情况，或将矩形二次切割，或不变。
```
    if(w>h){
      dw=int(random(w/4,w));
      rect(x,y,w-dw,h);
      fill(colors[int(random(0,6))]);
      rect(x+w-dw,y,dw,h);
    }
    else if(w<h){
      dh=int(random(h/4,h));
      rect(x,y,w,h-dh);
      fill(colors[int(random(0,6))]);
      rect(x,y+h-dh,w,dh);
    }
    else if(w==h){
      fill(colors[int(random(0,6))]);
      rect(x,y,w,h);
    }
```
当生成的矩形到达画布边缘，则切换至第二行再开始新的循环
```
    if(x>=width){
      x=0;
      y=y+h;
      h=h+b;
    }
    else {
      x=x+w;
    }
```


效果展示如下图

![](https://github.com/alm-adlt/homework/blob/main/image/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202021-10-04%20123710.jpg)
