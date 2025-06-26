package defpackage;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class j00 {
    public final Account a;
    public final Set<Scope> b;
    public final Set<Scope> c;
    public final Map<ny<?>, b> d;
    public final String e;
    public final String f;
    public final h35 g;
    public Integer h;

    public static final class a {
        public Account a;
        public h4<Scope> b;
        public String c;
        public String d;

        public final j00 a() {
            return new j00(this.a, this.b, null, 0, null, this.c, this.d, h35.a, false);
        }
    }

    public static final class b {
    }

    public j00(Account account, Set<Scope> set, Map<ny<?>, b> map, int i, View view, String str, String str2, h35 h35Var, boolean z) {
        this.a = account;
        Set<Scope> setUnmodifiableSet = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.b = setUnmodifiableSet;
        Map<ny<?>, b> map2 = Collections.EMPTY_MAP;
        this.d = map2;
        this.e = str;
        this.f = str2;
        this.g = h35Var;
        HashSet hashSet = new HashSet(setUnmodifiableSet);
        Iterator<b> it = map2.values().iterator();
        while (it.hasNext()) {
            Objects.requireNonNull(it.next());
            hashSet.addAll(null);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }
}
