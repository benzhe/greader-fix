package defpackage;

import defpackage.jj6;

/* loaded from: classes.dex */
public enum ly5 implements jj6.a {
    UNKNOWN_DISMISS_TYPE(0),
    AUTO(1),
    CLICK(2),
    SWIPE(3);

    public final int e;

    public static final class a implements jj6.b {
        public static final jj6.b a = new a();

        @Override // jj6.b
        public boolean a(int i) {
            return ly5.i(i) != null;
        }
    }

    ly5(int i) {
        this.e = i;
    }

    public static ly5 i(int i) {
        if (i == 0) {
            return UNKNOWN_DISMISS_TYPE;
        }
        if (i == 1) {
            return AUTO;
        }
        if (i == 2) {
            return CLICK;
        }
        if (i != 3) {
            return null;
        }
        return SWIPE;
    }

    @Override // jj6.a
    public final int g() {
        return this.e;
    }
}
