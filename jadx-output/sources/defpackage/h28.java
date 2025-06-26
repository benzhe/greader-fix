package defpackage;

import defpackage.v18;

/* loaded from: classes2.dex */
public class h28 extends v18 {
    public static final u38 d = new v38();
    public v18.a b;
    public int c = 0;
    public j38 a = new j38(d);

    public h28() {
        f();
    }

    @Override // defpackage.v18
    public String a() {
        return s18.u;
    }

    @Override // defpackage.v18
    public float b() {
        float f = 0.99f;
        if (this.c >= 6) {
            return 0.99f;
        }
        for (int i = 0; i < this.c; i++) {
            f *= 0.5f;
        }
        return 1.0f - f;
    }

    @Override // defpackage.v18
    public v18.a c() {
        return this.b;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i, int i2) {
        v18.a aVar = v18.a.FOUND_IT;
        int i3 = i2 + i;
        while (true) {
            if (i >= i3) {
                break;
            }
            int iA = this.a.a(bArr[i]);
            if (iA == 1) {
                this.b = v18.a.NOT_ME;
                break;
            }
            if (iA == 2) {
                this.b = aVar;
                break;
            }
            if (iA == 0 && this.a.c >= 2) {
                this.c++;
            }
            i++;
        }
        if (this.b == v18.a.DETECTING && b() > 0.95f) {
            this.b = aVar;
        }
        return this.b;
    }

    @Override // defpackage.v18
    public void f() {
        this.a.b = 0;
        this.c = 0;
        this.b = v18.a.DETECTING;
    }
}
