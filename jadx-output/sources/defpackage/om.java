package defpackage;

import android.content.ComponentName;
import android.content.Context;

/* loaded from: classes.dex */
public class om {
    public static final String a = vj.e("PackageManagerHelper");

    public static void a(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            vj vjVarC = vj.c();
            String str = a;
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            objArr[1] = z ? "enabled" : "disabled";
            vjVarC.a(str, String.format("%s %s", objArr), new Throwable[0]);
        } catch (Exception e) {
            vj vjVarC2 = vj.c();
            String str2 = a;
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            objArr2[1] = z ? "enabled" : "disabled";
            vjVarC2.a(str2, String.format("%s could not be %s", objArr2), e);
        }
    }
}
