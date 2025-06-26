package defpackage;

import defpackage.jj6;

/* loaded from: classes.dex */
public enum hk6 implements jj6.a {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public final int e;

    hk6(int i) {
        this.e = i;
    }

    @Override // jj6.a
    public final int g() {
        if (this != UNRECOGNIZED) {
            return this.e;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
