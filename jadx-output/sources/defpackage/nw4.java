package defpackage;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;

/* loaded from: classes.dex */
public final class nw4 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ String f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ qw4 j;

    public nw4(qw4 qw4Var, int i, String str, Object obj, Object obj2, Object obj3) {
        this.j = qw4Var;
        this.e = i;
        this.f = str;
        this.g = obj;
        this.h = obj2;
        this.i = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ex4 ex4VarQ = this.j.a.q();
        if (!ex4VarQ.h()) {
            Log.println(6, this.j.v(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        qw4 qw4Var = this.j;
        if (qw4Var.c == 0) {
            cs4 cs4Var = qw4Var.a.g;
            if (cs4Var.d == null) {
                synchronized (cs4Var) {
                    if (cs4Var.d == null) {
                        ApplicationInfo applicationInfo = cs4Var.a.a.getApplicationInfo();
                        String strA = f20.a();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            cs4Var.d = Boolean.valueOf(str != null && str.equals(strA));
                        }
                        if (cs4Var.d == null) {
                            cs4Var.d = Boolean.TRUE;
                            cs4Var.a.a().f.a("My process not in the list of running processes");
                        }
                    }
                }
            }
            if (cs4Var.d.booleanValue()) {
                qw4 qw4Var2 = this.j;
                c35 c35Var = qw4Var2.a.f;
                qw4Var2.c = 'C';
            } else {
                qw4 qw4Var3 = this.j;
                c35 c35Var2 = qw4Var3.a.f;
                qw4Var3.c = 'c';
            }
        }
        qw4 qw4Var4 = this.j;
        if (qw4Var4.d < 0) {
            qw4Var4.a.g.l();
            qw4Var4.d = 37000L;
        }
        char cCharAt = "01VDIWEA?".charAt(this.e);
        qw4 qw4Var5 = this.j;
        char c = qw4Var5.c;
        long j = qw4Var5.d;
        String strW = qw4.w(true, this.f, this.g, this.h, this.i);
        StringBuilder sb = new StringBuilder(String.valueOf(strW).length() + 24);
        sb.append("2");
        sb.append(cCharAt);
        sb.append(c);
        sb.append(j);
        sb.append(":");
        sb.append(strW);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = this.f.substring(0, 1024);
        }
        cx4 cx4Var = ex4VarQ.d;
        if (cx4Var != null) {
            cx4Var.e.d();
            if (cx4Var.e.n().getLong(cx4Var.a, 0L) == 0) {
                cx4Var.a();
            }
            if (string == null) {
                string = "";
            }
            long j2 = cx4Var.e.n().getLong(cx4Var.b, 0L);
            if (j2 <= 0) {
                SharedPreferences.Editor editorEdit = cx4Var.e.n().edit();
                editorEdit.putString(cx4Var.c, string);
                editorEdit.putLong(cx4Var.b, 1L);
                editorEdit.apply();
                return;
            }
            long jNextLong = cx4Var.e.a.t().d0().nextLong();
            long j3 = j2 + 1;
            long j4 = Long.MAX_VALUE / j3;
            SharedPreferences.Editor editorEdit2 = cx4Var.e.n().edit();
            if ((Long.MAX_VALUE & jNextLong) < j4) {
                editorEdit2.putString(cx4Var.c, string);
            }
            editorEdit2.putLong(cx4Var.b, j3);
            editorEdit2.apply();
        }
    }
}
