package defpackage;

import defpackage.kt;
import defpackage.nt;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class gt implements Object<nt> {
    public final jj7<dv> a;

    public gt(jj7<dv> jj7Var) {
        this.a = jj7Var;
    }

    public Object get() {
        dv dvVar = this.a.get();
        HashMap map = new HashMap();
        wq wqVar = wq.DEFAULT;
        nt.a.AbstractC0027a abstractC0027aA = nt.a.a();
        abstractC0027aA.b(30000L);
        abstractC0027aA.c(DateUtils.MILLIS_PER_DAY);
        map.put(wqVar, abstractC0027aA.a());
        wq wqVar2 = wq.HIGHEST;
        nt.a.AbstractC0027a abstractC0027aA2 = nt.a.a();
        abstractC0027aA2.b(1000L);
        abstractC0027aA2.c(DateUtils.MILLIS_PER_DAY);
        map.put(wqVar2, abstractC0027aA2.a());
        wq wqVar3 = wq.VERY_LOW;
        nt.a.AbstractC0027a abstractC0027aA3 = nt.a.a();
        abstractC0027aA3.b(DateUtils.MILLIS_PER_DAY);
        abstractC0027aA3.c(DateUtils.MILLIS_PER_DAY);
        Set<nt.b> setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(nt.b.NETWORK_UNMETERED, nt.b.DEVICE_IDLE)));
        kt.b bVar = (kt.b) abstractC0027aA3;
        Objects.requireNonNull(setUnmodifiableSet, "Null flags");
        bVar.c = setUnmodifiableSet;
        map.put(wqVar3, bVar.a());
        Objects.requireNonNull(dvVar, "missing required property: clock");
        int size = map.keySet().size();
        wq.values();
        if (size < 3) {
            throw new IllegalStateException("Not all priorities have been configured");
        }
        new HashMap();
        return new jt(dvVar, map);
    }
}
