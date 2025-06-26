package defpackage;

import defpackage.jj6;

/* loaded from: classes.dex */
public enum gz5 implements jj6.a {
    UNSPECIFIED_RENDER_ERROR(0),
    IMAGE_FETCH_ERROR(1),
    IMAGE_DISPLAY_ERROR(2),
    IMAGE_UNSUPPORTED_FORMAT(3);

    public final int e;

    public static final class a implements jj6.b {
        public static final jj6.b a = new a();

        @Override // jj6.b
        public boolean a(int i) {
            return gz5.i(i) != null;
        }
    }

    gz5(int i) {
        this.e = i;
    }

    public static gz5 i(int i) {
        if (i == 0) {
            return UNSPECIFIED_RENDER_ERROR;
        }
        if (i == 1) {
            return IMAGE_FETCH_ERROR;
        }
        if (i == 2) {
            return IMAGE_DISPLAY_ERROR;
        }
        if (i != 3) {
            return null;
        }
        return IMAGE_UNSUPPORTED_FORMAT;
    }

    @Override // jj6.a
    public final int g() {
        return this.e;
    }
}
