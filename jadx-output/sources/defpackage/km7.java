package defpackage;

import defpackage.kn7;
import defpackage.mn7;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class km7 extends mm7 implements kn7 {
    public km7() {
    }

    @Override // defpackage.cm7
    public gn7 computeReflected() {
        Objects.requireNonNull(sm7.a);
        return this;
    }

    @Override // defpackage.mn7
    public Object getDelegate() {
        return ((kn7) getReflected()).getDelegate();
    }

    @Override // defpackage.el7
    public Object invoke() {
        return get();
    }

    public km7(Object obj) {
        super(obj);
    }

    @Override // defpackage.mn7
    public mn7.a getGetter() {
        return ((kn7) getReflected()).getGetter();
    }

    @Override // defpackage.kn7
    public kn7.a getSetter() {
        return ((kn7) getReflected()).getSetter();
    }

    public km7(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
