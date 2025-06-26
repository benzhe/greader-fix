package defpackage;

import defpackage.v18;

/* loaded from: classes2.dex */
public class g28 extends v18 {
    public v18.a a;
    public e38 b;
    public boolean c;
    public short d;
    public int e;
    public int[] f;
    public int g;
    public int h;
    public v18 i;

    public g28(e38 e38Var) {
        this.b = e38Var;
        this.c = false;
        this.i = null;
        this.f = new int[4];
        f();
    }

    @Override // defpackage.v18
    public String a() {
        v18 v18Var = this.i;
        return v18Var == null ? this.b.d : v18Var.a();
    }

    @Override // defpackage.v18
    public float b() {
        int i = this.e;
        if (i <= 0) {
            return 0.01f;
        }
        float f = ((((this.f[3] * 1.0f) / i) / this.b.c) * this.h) / this.g;
        if (f >= 1.0f) {
            return 0.99f;
        }
        return f;
    }

    @Override // defpackage.v18
    public v18.a c() {
        return this.a;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            e38 e38Var = this.b;
            short s = e38Var.a[bArr[i] & 255];
            if (s < 250) {
                this.g++;
            }
            if (s < 64) {
                this.h++;
                short s2 = this.d;
                if (s2 < 64) {
                    this.e++;
                    if (this.c) {
                        int[] iArr = this.f;
                        byte b = e38Var.b[(s * 64) + s2];
                        iArr[b] = iArr[b] + 1;
                    } else {
                        int[] iArr2 = this.f;
                        byte b2 = e38Var.b[(s2 * 64) + s];
                        iArr2[b2] = iArr2[b2] + 1;
                    }
                }
            }
            this.d = s;
            i++;
        }
        if (this.a == v18.a.DETECTING && this.e > 1024) {
            float fB = b();
            if (fB > 0.95f) {
                this.a = v18.a.FOUND_IT;
            } else if (fB < 0.05f) {
                this.a = v18.a.NOT_ME;
            }
        }
        return this.a;
    }

    @Override // defpackage.v18
    public void f() {
        this.a = v18.a.DETECTING;
        this.d = (short) 255;
        for (int i = 0; i < 4; i++) {
            this.f[i] = 0;
        }
        this.e = 0;
        this.g = 0;
        this.h = 0;
    }

    public g28(e38 e38Var, boolean z, v18 v18Var) {
        this.b = e38Var;
        this.c = z;
        this.i = v18Var;
        this.f = new int[4];
        f();
    }
}
