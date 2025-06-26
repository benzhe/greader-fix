package defpackage;

import android.view.View;
import java.util.Objects;

/* loaded from: classes.dex */
public final class u41 implements cb3<View> {
    public final q41 a;

    public u41(q41 q41Var) {
        this.a = q41Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        View view = this.a.b;
        Objects.requireNonNull(view, "Cannot return null from a non-@Nullable @Provides method");
        return view;
    }
}
