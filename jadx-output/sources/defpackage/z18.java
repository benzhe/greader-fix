package defpackage;

import defpackage.v18;

/* loaded from: classes2.dex */
public class z18 extends v18 {
    public static final o38 e = new o38();
    public static final p38 f = new p38();
    public static final q38 g = new q38();
    public static final r38 h = new r38();
    public j38[] a = {new j38(e), new j38(f), new j38(g), new j38(h)};
    public int b;
    public v18.a c;
    public String d;

    public z18() {
        f();
    }

    @Override // defpackage.v18
    public String a() {
        return this.d;
    }

    @Override // defpackage.v18
    public float b() {
        return 0.99f;
    }

    @Override // defpackage.v18
    public v18.a c() {
        return this.c;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3 && this.c == v18.a.DETECTING) {
            for (int i4 = this.b - 1; i4 >= 0; i4--) {
                int iA = this.a[i4].a(bArr[i]);
                if (iA == 1) {
                    int i5 = this.b - 1;
                    this.b = i5;
                    if (i5 <= 0) {
                        v18.a aVar = v18.a.NOT_ME;
                        this.c = aVar;
                        return aVar;
                    }
                    if (i4 != i5) {
                        j38[] j38VarArr = this.a;
                        j38 j38Var = j38VarArr[i5];
                        j38VarArr[i5] = j38VarArr[i4];
                        j38VarArr[i4] = j38Var;
                    }
                } else if (iA == 2) {
                    v18.a aVar2 = v18.a.FOUND_IT;
                    this.c = aVar2;
                    this.d = this.a[i4].a.e;
                    return aVar2;
                }
            }
            i++;
        }
        return this.c;
    }

    @Override // defpackage.v18
    public void f() {
        this.c = v18.a.DETECTING;
        int i = 0;
        while (true) {
            j38[] j38VarArr = this.a;
            if (i >= j38VarArr.length) {
                this.b = j38VarArr.length;
                this.d = null;
                return;
            } else {
                j38VarArr[i].b = 0;
                i++;
            }
        }
    }
}
