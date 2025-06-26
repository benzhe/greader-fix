package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public final class k25 {
    public final Context a;

    public k25(Context context) {
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null reference");
        this.a = applicationContext;
    }
}
