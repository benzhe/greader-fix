package defpackage;

import android.content.Context;
import android.content.res.Resources;

/* loaded from: classes.dex */
public class fn5 {
    public final Context a;
    public boolean b = false;
    public String c;

    public fn5(Context context) {
        this.a = context;
    }

    public String a() throws Resources.NotFoundException {
        String string;
        if (!this.b) {
            Context context = this.a;
            int iM = vh5.m(context, "com.google.firebase.crashlytics.unity_version", "string");
            if (iM != 0) {
                string = context.getResources().getString(iM);
                jo.G("Unity Editor version is: ", string, ah5.a);
            } else {
                string = null;
            }
            this.c = string;
            this.b = true;
        }
        String str = this.c;
        if (str != null) {
            return str;
        }
        return null;
    }
}
