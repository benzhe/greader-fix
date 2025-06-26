package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;

@Deprecated
/* loaded from: classes.dex */
public final class o50 {
    public final boolean a;
    public final List<m50> b = new LinkedList();
    public final Map<String, String> c;
    public final Object d;
    public o50 e;

    public o50(String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.c = linkedHashMap;
        this.d = new Object();
        this.a = true;
        linkedHashMap.put("action", str);
        linkedHashMap.put("ad_format", str2);
    }

    public final boolean a(m50 m50Var, long j, String... strArr) {
        synchronized (this.d) {
            for (String str : strArr) {
                this.b.add(new m50(j, str, m50Var));
            }
        }
        return true;
    }

    public final void b(String str, String str2) {
        e50 e50VarE;
        if (!this.a || TextUtils.isEmpty(str2) || (e50VarE = zzr.zzkz().e()) == null) {
            return;
        }
        synchronized (this.d) {
            i50 i50Var = e50VarE.c.get(str);
            if (i50Var == null) {
                i50Var = i50.a;
            }
            Map<String, String> map = this.c;
            map.put(str, i50Var.a(map.get(str), str2));
        }
    }

    public final n50 c() {
        n50 n50Var;
        boolean zBooleanValue = ((Boolean) os3.j.f.a(y40.l1)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap map = new HashMap();
        synchronized (this.d) {
            for (m50 m50Var : this.b) {
                long j = m50Var.a;
                String str = m50Var.b;
                m50 m50Var2 = m50Var.c;
                if (m50Var2 != null && j > 0) {
                    long j2 = j - m50Var2.a;
                    sb.append(str);
                    sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                    sb.append(j2);
                    sb.append(',');
                    if (zBooleanValue) {
                        if (map.containsKey(Long.valueOf(m50Var2.a))) {
                            StringBuilder sb2 = (StringBuilder) map.get(Long.valueOf(m50Var2.a));
                            sb2.append('+');
                            sb2.append(str);
                        } else {
                            map.put(Long.valueOf(m50Var2.a), new StringBuilder(str));
                        }
                    }
                }
            }
            this.b.clear();
            String string = null;
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            StringBuilder sb3 = new StringBuilder();
            if (zBooleanValue) {
                for (Map.Entry entry : map.entrySet()) {
                    sb3.append((CharSequence) entry.getValue());
                    sb3.append(FilenameUtils.EXTENSION_SEPARATOR);
                    sb3.append((((Long) entry.getKey()).longValue() - zzr.zzlc().b()) + zzr.zzlc().a());
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                string = sb3.toString();
            }
            n50Var = new n50(sb.toString(), string);
        }
        return n50Var;
    }

    public final Map<String, String> d() {
        o50 o50Var;
        synchronized (this.d) {
            e50 e50VarE = zzr.zzkz().e();
            if (e50VarE != null && (o50Var = this.e) != null) {
                return e50VarE.a(this.c, o50Var.d());
            }
            return this.c;
        }
    }
}
