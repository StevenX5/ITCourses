#include <graphics.h>
#include <conio.h>
#include <math.h>
#define PI	3.14

/**
* 绘制五角星的函数
* 参数：
*	radius		外接圆的半径
*	startAngle	初始角度
*/
void FiveStar(int radius, double startAngle) {
	double delta = 2 * PI / 5;		// 增量，圆的五分之一
	POINT points[5];				// POINT数组，存储5个点

	for (int i = 0; i < 5; i++) {
		points[i].x = cos(startAngle + i * delta * 2) * radius;		// x坐标
		points[i].y = sin(startAngle + i * delta * 2) * radius;		// y坐标
	}
	solidpolygon(points, 5);
}

int main() {
	// 初始化窗口大小与背景色
	initgraph(800, 600);
	setbkcolor(BLACK);
	cleardevice();

	// 反转坐标轴，使y轴向上为正
	setaspectratio(1, -1);

	// 设置坐标原点
	setorigin(400, 300);

	// 设置填充颜色
	setfillcolor(RED);

	// 设置填充模式（ALTERNATE/WINDING）
	setpolyfillmode(WINDING);

	FiveStar(200, PI / 2);

	// 输入任意字符关闭窗口
	_getch();
	closegraph();

	return 0;
}