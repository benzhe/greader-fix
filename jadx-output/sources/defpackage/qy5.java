package defpackage;

import defpackage.jj6;

/* loaded from: classes.dex */
public enum qy5 implements jj6.a {
    UNSPECIFIED_FETCH_ERROR(0),
    SERVER_ERROR(1),
    CLIENT_ERROR(2),
    NETWORK_ERROR(3);

    public final int e;

    public static final class a implements jj6.b {
        public static final jj6.b a = new a();

        @Override // jj6.b
        public boolean a(int i) {
            return qy5.i(i) != null;
        }
    }

    qy5(int i) {
        this.e = i;
    }

    public static qy5 i(int i) {
        if (i == 0) {
            return UNSPECIFIED_FETCH_ERROR;
        }
        if (i == 1) {
            return SERVER_ERROR;
        }
        if (i == 2) {
            return CLIENT_ERROR;
        }
        if (i != 3) {
            return null;
        }
        return NETWORK_ERROR;
    }

    @Override // jj6.a
    public final int g() {
        return this.e;
    }
}
