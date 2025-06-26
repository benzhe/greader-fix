package defpackage;

import android.util.Base64;
import java.util.List;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class f9 {
    public final String a;
    public final String b;
    public final String c;
    public final List<List<byte[]>> d;
    public final String e;

    public f9(String str, String str2, String str3, List<List<byte[]>> list) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        Objects.requireNonNull(list);
        this.d = list;
        this.e = str + "-" + str2 + "-" + str3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sbZ = jo.z("FontRequest {mProviderAuthority: ");
        sbZ.append(this.a);
        sbZ.append(", mProviderPackage: ");
        sbZ.append(this.b);
        sbZ.append(", mQuery: ");
        sbZ.append(this.c);
        sbZ.append(", mCertificates:");
        sb.append(sbZ.toString());
        for (int i = 0; i < this.d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        return jo.s(sb, StringSubstitutor.DEFAULT_VAR_END, "mCertificatesArray: 0");
    }
}
