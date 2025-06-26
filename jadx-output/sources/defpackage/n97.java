package defpackage;

/* loaded from: classes2.dex */
public final class n97 extends h47 {
    @Override // defpackage.h47
    public g47 a(String str) {
        return m97.forTarget(str);
    }

    @Override // defpackage.h47
    public boolean b() {
        return true;
    }

    @Override // defpackage.h47
    public int c() throws ClassNotFoundException {
        boolean z = false;
        try {
            Class.forName("android.app.Application", false, n97.class.getClassLoader());
            z = true;
        } catch (Exception unused) {
        }
        return z ? 8 : 3;
    }
}
