package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class ew6 {
    public ip6 a = null;
    public lp6 b = null;
    public String c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f = false;
    public long g = -1;
    public int h = 0;

    public void a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = false;
        this.e = false;
        this.g = -1L;
        this.h = 0;
    }

    public void b() {
        this.a = null;
        this.b = null;
    }

    public String c(Context context) {
        StringBuilder sb = new StringBuilder(128);
        ip6 ip6Var = this.a;
        if (ip6Var != null) {
            sb.append(ip6Var.h);
        } else {
            lp6 lp6Var = this.b;
            if (lp6Var != null) {
                int i = lp6Var.g;
                if (i == 1) {
                    sb.append(context.getText(R.string.label_starred));
                } else if (i == 10 || i == 11) {
                    sb.append(lp6Var.i);
                }
            } else if (this.d) {
                sb.append(context.getText(R.string.label_saved));
            } else if (this.e) {
                sb.append(context.getText(R.string.label_podcast));
            } else {
                sb.append(context.getText(R.string.label_all));
            }
        }
        return sb.toString();
    }

    public long d() {
        if (this.g <= 0) {
            this.g = System.currentTimeMillis();
        }
        return this.g;
    }

    public String e(Context context) {
        return on6.f(context) + " limit " + ((this.h + 1) * 50);
    }

    public String f() {
        ip6 ip6Var = this.a;
        if (ip6Var != null) {
            return ip6Var.f;
        }
        lp6 lp6Var = this.b;
        return lp6Var != null ? lp6Var.f : this.d ? "cached" : this.e ? "podcast" : "";
    }

    public void g(Context context, Bundle bundle) {
        if (bundle.containsKey("cachedItems")) {
            on6.a.d = bundle.getBoolean("cachedItems", false);
        }
        if (bundle.containsKey("podcastItems")) {
            on6.a.e = bundle.getBoolean("podcastItems", false);
        }
        ew6 ew6Var = on6.a;
        if (!ew6Var.d && !ew6Var.e) {
            long j = bundle.getLong("subId", 0L);
            String string = bundle.getString("subUid");
            if (on6.a.a == null && j <= 0 && TextUtils.isEmpty(string)) {
                lp6 lp6Var = on6.a.b;
                if (lp6Var == null || lp6Var.g != 9) {
                    String string2 = bundle.getString("tagUid");
                    if (on6.a.b == null && string2 != null) {
                        lp6 lp6VarB = lp6.b(context, string2, false);
                        if (lp6VarB == null) {
                            lp6 lp6Var2 = new lp6();
                            lp6Var2.f = string2;
                            ep6 ep6VarI = on6.i(context);
                            ep6VarI.U(lp6Var2, System.currentTimeMillis());
                            ep6VarI.Y();
                            on6.a.b = lp6Var2;
                        } else if (lp6VarB.g == 9) {
                            n56.f1(context, lp6VarB);
                        } else {
                            on6.a.b = lp6VarB;
                        }
                    }
                } else {
                    n56.f1(context, lp6Var);
                }
            } else {
                ew6 ew6Var2 = on6.a;
                if (ew6Var2.a == null) {
                    if (j > 0) {
                        ew6Var2.a = ip6.c(context, j, true);
                    } else {
                        ew6Var2.a = ip6.d(context, string, true);
                    }
                }
            }
        }
        if (bundle.containsKey("readingTime")) {
            on6.a.g = bundle.getLong("readingTime");
        }
        if (bundle.containsKey("page")) {
            on6.a.h = bundle.getInt("page");
        }
    }

    public void h(Bundle bundle) {
        ip6 ip6Var = this.a;
        if (ip6Var != null) {
            bundle.putLong("subId", ip6Var.e);
        }
        lp6 lp6Var = this.b;
        if (lp6Var != null) {
            bundle.putString("tagUid", lp6Var.f);
        }
        String str = this.c;
        if (str != null) {
            bundle.putString("query", str);
        }
        if (this.e) {
            bundle.putBoolean("podcastItems", true);
        }
        if (this.d) {
            bundle.putBoolean("cachedItems", true);
        }
        if (this.f) {
            bundle.putBoolean("unreadOnly", true);
        }
        long j = this.g;
        if (j > -1) {
            bundle.putLong("readingTime", j);
        }
        int i = this.h;
        if (i > 0) {
            bundle.putInt("page", i);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        lp6 lp6Var = this.b;
        sb.append(lp6Var != null ? lp6Var.f : "");
        ip6 ip6Var = this.a;
        sb.append(ip6Var != null ? ip6Var.f : "");
        sb.append(" : ");
        sb.append(this.g);
        return sb.toString();
    }
}
