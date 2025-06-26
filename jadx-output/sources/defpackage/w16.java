package defpackage;

import android.view.LayoutInflater;
import java.util.Objects;

/* loaded from: classes.dex */
public final class w16 implements Object<LayoutInflater> {
    public final t16 a;

    public w16(t16 t16Var) {
        this.a = t16Var;
    }

    public Object get() {
        LayoutInflater layoutInflater = (LayoutInflater) this.a.c.getSystemService("layout_inflater");
        Objects.requireNonNull(layoutInflater, "Cannot return null from a non-@Nullable @Provides method");
        return layoutInflater;
    }
}
