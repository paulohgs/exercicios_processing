size(540, 540);
noStroke();
int tr1, tr2, tr3, tr4,mat1;
tr1 = 0;
tr2 = 0;
tr3 = 0;
tr4 = 0;
mat1 = 0;
background(255);
fill(0);
while (tr2 <= height) {
    while (tr1 <= width) {
        triangle(tr3+60, tr4, tr3+60, tr4+60, tr3+120, tr4);
        triangle(tr1, tr2, tr1, tr2+60, tr1+60, tr2+60);
        tr1 = tr1 + 120;
        tr3 = tr3 + 120;
    }
    tr2 = tr2 + 60;
    tr4 = tr4 + 60;
    tr1 = 0;
    tr3 = 0;
}
