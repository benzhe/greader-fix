package defpackage;

/* loaded from: classes.dex */
public final class nk6 implements yj6 {
    public final ak6 a;
    public final String b;
    public final Object[] c;
    public final int d;

    public nk6(ak6 ak6Var, String str, Object[] objArr) {
        this.a = ak6Var;
        this.b = str;
        this.c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.d = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    @Override // defpackage.yj6
    public boolean a() {
        return (this.d & 2) == 2;
    }

    @Override // defpackage.yj6
    public ak6 b() {
        return this.a;
    }

    @Override // defpackage.yj6
    public kk6 c() {
        return (this.d & 1) == 1 ? kk6.PROTO2 : kk6.PROTO3;
    }
}
