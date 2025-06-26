package defpackage;

import android.os.Build;
import android.os.UserManager;

/* loaded from: classes.dex */
public class uv3 {
    public static volatile UserManager a;
    public static volatile boolean b;

    static {
        b = !(Build.VERSION.SDK_INT >= 24);
    }
}
