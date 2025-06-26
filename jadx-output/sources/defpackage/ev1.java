package defpackage;

import java.util.regex.Matcher;

/* loaded from: classes.dex */
public final class ev1 implements rv2<hl2> {
    public final /* synthetic */ zu1 a;

    public ev1(zu1 zu1Var) {
        this.a = zu1Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) throws NumberFormatException {
        if (((Boolean) os3.j.f.a(y40.M3)).booleanValue()) {
            Matcher matcher = zu1.f.matcher(th.getMessage());
            if (matcher.matches()) {
                String strGroup = matcher.group(1);
                dy1 dy1Var = this.a.e;
                int i = Integer.parseInt(strGroup);
                synchronized (dy1Var.e) {
                    dy1Var.a = i;
                }
            }
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(hl2 hl2Var) {
        hl2 hl2Var2 = hl2Var;
        if (((Boolean) os3.j.f.a(y40.M3)).booleanValue()) {
            dy1 dy1Var = this.a.e;
            int i = hl2Var2.b.b.e;
            synchronized (dy1Var.e) {
                dy1Var.a = i;
            }
            dy1 dy1Var2 = this.a.e;
            long j = hl2Var2.b.b.f;
            synchronized (dy1Var2.f) {
                dy1Var2.b = j;
            }
        }
    }
}
