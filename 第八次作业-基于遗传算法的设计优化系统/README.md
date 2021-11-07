### 第八次作业：基于遗传算法的设计优化系统

#### 设计思路：
利用遗传算法与交互给对象加分的方法，在代码随机生成的几何图形与颜色搭配中找出接近使用者喜好的图案/颜色排布。

#### 代码思路
1 在class Design中，利用map将基因中0~1的数字转化为可形成图案的集合变量值（原代码过长，只用一个图形来举例）：

```
class DNA{……
void display（）{
 //define --------------
……
 //ellipse 
    float elps_x=map(genes[3],0,1,0,150);
    float elps_y=map(genes[4],0,1,0,230);
    float elps_dx=map(genes[5],0,1,0,80);
    float elps_dy=map(genes[6],0,1,5,80);
    float elpsc1=map(genes[7],0,1,0,255);
    float elpsc2=map(genes[8],0,1,0,255);
    float elpsc3=map(genes[9],0,1,0,255);
    stroke(0);
    fill(elpsc1,elpsc2,elpsc3);
    ellipse(elps_x,elps_y,elps_dx,elps_dy);
    ……
    }
```

2.class button给每个图形设置自己的按键区域，在偏好的图样区域的内部按下鼠标左键即可给该图样打分，分数较高的一项的特征在下一代出现几率更大

![](https://github.com/alm-adlt/homework/blob/main/image/graphic_design_helper%202021-11-06%2018-56-43%2000_00_05-00_00_13.gif)

所有鼠标互动都通过button设置按钮，便于操作。

3.因该程序基因数较少，每一次展示的图样也较少，所以采用较高的变异率以提升获得不同图样的概率
```
void setup(){
……
  float mutationRate=0.6;
……
}


```
4.通过鼠标互动进行下一代的更新

![](https://github.com/alm-adlt/homework/blob/main/image/graphic_design_helper%202021-11-06%2018-56-43%2000_00_12-00_00_18.gif)

```
//if user want new genaration
void mousePressed(){
  if(button.clicked(mouseX,mouseY))
  {population.select();
  population.reproduction();
  }

}

void mouseReleased(){
  button.released();
}
```




