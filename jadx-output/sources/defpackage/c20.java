package defpackage;

import android.content.Context;
import android.util.Log;
import java.util.Objects;

/* loaded from: classes.dex */
public final class c20 {
    public static boolean a(Context context, Throwable th) {
        try {
            Objects.requireNonNull(context, "null reference");
            Objects.requireNonNull(th, "null reference");
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
