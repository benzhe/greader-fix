package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public final class qt7 {
    public final byte[] a;
    public int b;
    public int c;
    public boolean d;
    public boolean e;
    public qt7 f;
    public qt7 g;

    public qt7() {
        this.a = new byte[RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        this.e = true;
        this.d = false;
    }

    public final qt7 a() {
        qt7 qt7Var = this.f;
        if (qt7Var == this) {
            qt7Var = null;
        }
        qt7 qt7Var2 = this.g;
        im7.c(qt7Var2);
        qt7Var2.f = this.f;
        qt7 qt7Var3 = this.f;
        im7.c(qt7Var3);
        qt7Var3.g = this.g;
        this.f = null;
        this.g = null;
        return qt7Var;
    }

    public final qt7 b(qt7 qt7Var) {
        im7.e(qt7Var, "segment");
        qt7Var.g = this;
        qt7Var.f = this.f;
        qt7 qt7Var2 = this.f;
        im7.c(qt7Var2);
        qt7Var2.g = qt7Var;
        this.f = qt7Var;
        return qt7Var;
    }

    public final qt7 c() {
        this.d = true;
        return new qt7(this.a, this.b, this.c, true, false);
    }

    public final void d(qt7 qt7Var, int i) {
        im7.e(qt7Var, "sink");
        if (!qt7Var.e) {
            throw new IllegalStateException("only owner can write".toString());
        }
        int i2 = qt7Var.c;
        if (i2 + i > 8192) {
            if (qt7Var.d) {
                throw new IllegalArgumentException();
            }
            int i3 = qt7Var.b;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = qt7Var.a;
            ek7.c(bArr, bArr, 0, i3, i2, 2);
            qt7Var.c -= qt7Var.b;
            qt7Var.b = 0;
        }
        byte[] bArr2 = this.a;
        byte[] bArr3 = qt7Var.a;
        int i4 = qt7Var.c;
        int i5 = this.b;
        ek7.b(bArr2, bArr3, i4, i5, i5 + i);
        qt7Var.c += i;
        this.b += i;
    }

    public qt7(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        im7.e(bArr, "data");
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
    }
}
