package defpackage;

import android.view.View;
import java.util.Objects;

/* loaded from: classes.dex */
public final class i31 implements cb3<View> {
    public final j31 a;

    public i31(j31 j31Var) {
        this.a = j31Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        View view = this.a.a;
        Objects.requireNonNull(view, "Cannot return null from a non-@Nullable @Provides method");
        return view;
    }
}
