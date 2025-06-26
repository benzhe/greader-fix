package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class ik3 {
    public final boolean a;
    public final int b;
    public final dk3[] c;
    public int d;
    public int e;
    public int f;
    public dk3[] g;

    public ik3() {
        c50.j(true);
        c50.j(true);
        this.a = true;
        this.b = 65536;
        this.f = 0;
        this.g = new dk3[100];
        this.c = new dk3[1];
    }

    public final synchronized void a(dk3 dk3Var) {
        dk3[] dk3VarArr = this.c;
        dk3VarArr[0] = dk3Var;
        b(dk3VarArr);
    }

    public final synchronized void b(dk3[] dk3VarArr) {
        int i = this.f;
        int length = dk3VarArr.length + i;
        dk3[] dk3VarArr2 = this.g;
        if (length >= dk3VarArr2.length) {
            this.g = (dk3[]) Arrays.copyOf(dk3VarArr2, Math.max(dk3VarArr2.length << 1, i + dk3VarArr.length));
        }
        for (dk3 dk3Var : dk3VarArr) {
            byte[] bArr = dk3Var.a;
            c50.j(bArr == null || bArr.length == this.b);
            dk3[] dk3VarArr3 = this.g;
            int i2 = this.f;
            this.f = i2 + 1;
            dk3VarArr3[i2] = dk3Var;
        }
        this.e -= dk3VarArr.length;
        notifyAll();
    }

    public final synchronized void c(int i) {
        boolean z = i < this.d;
        this.d = i;
        if (z) {
            d();
        }
    }

    public final synchronized void d() {
        int iMax = Math.max(0, el3.h(this.d, this.b) - this.e);
        int i = this.f;
        if (iMax >= i) {
            return;
        }
        Arrays.fill(this.g, iMax, i, (Object) null);
        this.f = iMax;
    }
}
