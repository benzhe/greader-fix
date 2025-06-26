package defpackage;

import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;

/* loaded from: classes.dex */
public class h7 {

    public static class a extends h7 {
        public final ActivityOptions a;

        public a(ActivityOptions activityOptions) {
            this.a = activityOptions;
        }

        @Override // defpackage.h7
        public Bundle b() {
            return this.a.toBundle();
        }
    }

    public static h7 a(Context context, int i, int i2) {
        return new a(ActivityOptions.makeCustomAnimation(context, i, i2));
    }

    public Bundle b() {
        throw null;
    }
}
