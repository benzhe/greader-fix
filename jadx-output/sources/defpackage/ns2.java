package defpackage;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;

/* loaded from: classes.dex */
public final class ns2 {
    public static final ClipData a;

    static {
        int i = Build.VERSION.SDK_INT;
        a = ClipData.newIntent("", new Intent());
    }

    public static PendingIntent a(Context context, Intent intent, int i) {
        boolean z = true;
        c50.k((i & 95) == 0, "Cannot set any dangerous parts of intent to be mutable.");
        c50.k(intent.getComponent() != null, "Must set component on Intent.");
        if (b(0, 1)) {
            c50.k(!b(i, 67108864), "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.");
        } else {
            if (Build.VERSION.SDK_INT >= 23 && !b(i, 67108864)) {
                z = false;
            }
            c50.k(z, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.");
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !b(i, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!b(0, 3) && intent2.getAction() == null) {
                intent2.setAction("");
            }
            if (!b(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory("");
            }
            if (!b(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!b(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(a);
            }
        }
        return PendingIntent.getService(context, 0, intent2, i);
    }

    public static boolean b(int i, int i2) {
        return (i & i2) == i2;
    }
}
