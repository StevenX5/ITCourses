#include <graphics.h>
#include <conio.h>
#include <math.h>
#define PI	3.14

/**
* ��������ǵĺ���
* ������
*	radius		���Բ�İ뾶
*	startAngle	��ʼ�Ƕ�
*/
void FiveStar(int radius, double startAngle) {
	double delta = 2 * PI / 5;		// ������Բ�����֮һ
	POINT points[5];				// POINT���飬�洢5����

	for (int i = 0; i < 5; i++) {
		points[i].x = cos(startAngle + i * delta * 2) * radius;		// x����
		points[i].y = sin(startAngle + i * delta * 2) * radius;		// y����
	}
	solidpolygon(points, 5);
}

int main() {
	// ��ʼ�����ڴ�С�뱳��ɫ
	initgraph(800, 600);
	setbkcolor(BLACK);
	cleardevice();

	// ��ת�����ᣬʹy������Ϊ��
	setaspectratio(1, -1);

	// ��������ԭ��
	setorigin(400, 300);

	// ���������ɫ
	setfillcolor(RED);

	// �������ģʽ��ALTERNATE/WINDING��
	setpolyfillmode(WINDING);

	FiveStar(200, PI / 2);

	// ���������ַ��رմ���
	_getch();
	closegraph();

	return 0;
}