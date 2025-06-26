package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ru1 implements cb3<String> {
    public final mb3<Context> a;

    public ru1(mb3<Context> mb3Var) {
        this.a = mb3Var;
    }

    public static String a(Context context) {
        String packageName = context.getPackageName();
        Objects.requireNonNull(packageName, "Cannot return null from a non-@Nullable @Provides method");
        return packageName;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a.get());
    }
}
