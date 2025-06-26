package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.util.Objects;

/* loaded from: classes.dex */
public final class lu1 implements cb3<ApplicationInfo> {
    public final mb3<Context> a;

    public lu1(mb3<Context> mb3Var) {
        this.a = mb3Var;
    }

    public static ApplicationInfo a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        Objects.requireNonNull(applicationInfo, "Cannot return null from a non-@Nullable @Provides method");
        return applicationInfo;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a.get());
    }
}
