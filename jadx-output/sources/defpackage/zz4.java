package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.R$string;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zz4 {
    @Deprecated
    public static String a(Context context, String str) {
        try {
            Objects.requireNonNull(context, "null reference");
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("google_app_id", "string", resources.getResourcePackageName(R$string.common_google_play_services_unknown_issue));
            if (identifier == 0) {
                return null;
            }
            return resources.getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static String b(Context context, String str, String str2) {
        Objects.requireNonNull(context, "null reference");
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = c50.I1(context);
        }
        return c50.Z2("google_app_id", resources, str2);
    }

    public static String c(String str, String[] strArr, String[] strArr2) {
        int iMin = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < iMin; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }
}
