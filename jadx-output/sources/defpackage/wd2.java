package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class wd2 implements qd2<td2> {
    public final zv2 a;
    public final Context b;

    public wd2(zv2 zv2Var, Context context) {
        this.a = zv2Var;
        this.b = context;
    }

    public static ResolveInfo b(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    @Override // defpackage.qd2
    public final aw2<td2> a() {
        return this.a.y(new Callable(this) { // from class: vd2
            public final wd2 e;

            {
                this.e = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:26:0x00a5  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x012e  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() throws android.content.pm.PackageManager.NameNotFoundException {
                /*
                    Method dump skipped, instructions count: 325
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.vd2.call():java.lang.Object");
            }
        });
    }
}
