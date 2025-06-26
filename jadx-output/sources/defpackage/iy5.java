package defpackage;

import defpackage.jj6;

/* loaded from: classes.dex */
public enum iy5 implements jj6.a {
    UNKNOWN_TRIGGER(0),
    APP_LAUNCH(1),
    ON_FOREGROUND(2),
    UNRECOGNIZED(-1);

    public final int e;

    iy5(int i) {
        this.e = i;
    }

    public static iy5 i(int i) {
        if (i == 0) {
            return UNKNOWN_TRIGGER;
        }
        if (i == 1) {
            return APP_LAUNCH;
        }
        if (i != 2) {
            return null;
        }
        return ON_FOREGROUND;
    }

    @Override // jj6.a
    public final int g() {
        if (this != UNRECOGNIZED) {
            return this.e;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
