package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Process;

/* loaded from: classes.dex */
public class u7 {
    public static final Object a = new Object();

    public static int a(Context context, String str) {
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    public static int b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }
}
