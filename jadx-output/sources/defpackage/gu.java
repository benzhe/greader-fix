package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class gu implements Object<du> {

    public static final class a {
        public static final gu a = new gu();
    }

    public Object get() {
        du duVar = du.a;
        Objects.requireNonNull(duVar, "Cannot return null from a non-@Nullable @Provides method");
        return duVar;
    }
}
