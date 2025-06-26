package defpackage;

/* loaded from: classes2.dex */
public class j38 {
    public u38 a;
    public int b = 0;
    public int c;
    public int d;

    public j38(u38 u38Var) {
        this.a = u38Var;
    }

    public int a(byte b) {
        int iB = this.a.a.b(b & 255);
        int i = this.b;
        if (i == 0) {
            this.d = 0;
            this.c = this.a.d[iB];
        }
        u38 u38Var = this.a;
        int iB2 = u38Var.c.b((i * u38Var.b) + iB);
        this.b = iB2;
        this.d++;
        return iB2;
    }
}
