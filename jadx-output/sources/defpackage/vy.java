package defpackage;

import com.google.android.gms.common.Feature;

/* loaded from: classes.dex */
public final class vy extends UnsupportedOperationException {
    public final Feature e;

    public vy(Feature feature) {
        this.e = feature;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String strValueOf = String.valueOf(this.e);
        return jo.O(strValueOf.length() + 8, "Missing ", strValueOf);
    }
}
