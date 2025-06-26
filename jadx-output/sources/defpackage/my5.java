package defpackage;

import defpackage.jj6;

/* loaded from: classes.dex */
public enum my5 implements jj6.a {
    UNKNOWN_EVENT_TYPE(0),
    IMPRESSION_EVENT_TYPE(1),
    CLICK_EVENT_TYPE(2);

    public final int e;

    public static final class a implements jj6.b {
        public static final jj6.b a = new a();

        @Override // jj6.b
        public boolean a(int i) {
            return my5.i(i) != null;
        }
    }

    my5(int i2) {
        this.e = i2;
    }

    public static my5 i(int i2) {
        if (i2 == 0) {
            return UNKNOWN_EVENT_TYPE;
        }
        if (i2 == 1) {
            return IMPRESSION_EVENT_TYPE;
        }
        if (i2 != 2) {
            return null;
        }
        return CLICK_EVENT_TYPE;
    }

    @Override // jj6.a
    public final int g() {
        return this.e;
    }
}
