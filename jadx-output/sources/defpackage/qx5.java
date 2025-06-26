package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public class qx5 {

    public enum a {
        DEBUG,
        WARN,
        NONE
    }

    public static void a(a aVar, String str, String str2, Object... objArr) {
        if (aVar.ordinal() >= 1) {
            String str3 = String.format("(%s) [%s]: ", "22.0.1", str) + String.format(str2, objArr);
            int iOrdinal = aVar.ordinal();
            if (iOrdinal == 0) {
                Log.i("Firestore", str3);
            } else if (iOrdinal == 1) {
                Log.w("Firestore", str3);
            } else if (iOrdinal == 2) {
                throw new IllegalStateException("Trying to log something on level NONE");
            }
        }
    }
}
