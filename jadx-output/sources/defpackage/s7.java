package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;

/* loaded from: classes.dex */
public class s7 {
    public final Intent a;

    public s7(Context context, ComponentName componentName) {
        Objects.requireNonNull(context);
        Intent action = new Intent().setAction("android.intent.action.SEND");
        this.a = action;
        action.putExtra("androidx.core.app.EXTRA_CALLING_PACKAGE", context.getPackageName());
        action.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", context.getPackageName());
        action.putExtra("androidx.core.app.EXTRA_CALLING_ACTIVITY", componentName);
        action.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", componentName);
        action.addFlags(524288);
    }

    public Intent a() {
        if ("android.intent.action.SEND_MULTIPLE".equals(this.a.getAction())) {
            this.a.setAction("android.intent.action.SEND");
            this.a.removeExtra("android.intent.extra.STREAM");
        }
        return this.a;
    }
}
