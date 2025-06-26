package defpackage;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class oy extends Exception {
    public oy(Status status) {
        int i = status.f;
        String str = status.g;
        str = str == null ? "" : str;
        StringBuilder sb = new StringBuilder(str.length() + 13);
        sb.append(i);
        sb.append(": ");
        sb.append(str);
        super(sb.toString());
    }
}
