package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.Date;

/* loaded from: classes.dex */
public class rl6 {
    public ql6 a;
    public vl6 b;
    public long c;
    public int d;

    public rl6(ql6 ql6Var, vl6 vl6Var, long j, int i) {
        this.a = ql6Var;
        this.b = vl6Var;
        this.c = j;
        this.d = i;
    }

    public String a() {
        return String.format("{ Consent: %s | Location: %s | Date: %s | Version: %d}", this.a.name(), this.b.name(), new Date(this.c).toLocaleString(), Integer.valueOf(this.d));
    }

    public rl6(Context context, ql6 ql6Var, vl6 vl6Var) {
        int i;
        this.a = ql6Var;
        this.b = vl6Var;
        this.c = new Date().getTime();
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            i = -1;
        }
        this.d = i;
    }
}
