package defpackage;

/* loaded from: classes.dex */
public final class jy4 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ long h;
    public final /* synthetic */ ky4 i;

    public jy4(ky4 ky4Var, String str, String str2, String str3, long j) {
        this.i = ky4Var;
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.e == null) {
            this.i.e.j.y().s(this.f, null);
            return;
        }
        h05 h05VarY = this.i.e.j.y();
        String str = this.f;
        h05VarY.d();
        synchronized (h05VarY) {
            String str2 = h05VarY.m;
            if (str2 != null) {
                str2.equals(str);
            }
            h05VarY.m = str;
        }
    }
}
