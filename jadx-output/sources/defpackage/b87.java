package defpackage;

import defpackage.r87;
import defpackage.x47;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class b87 {
    public final Map<String, a> a;
    public final Map<String, a> b;
    public final r87.x c;
    public final Object d;

    public static final class a {
        public final Long a;
        public final Boolean b;
        public final Integer c;
        public final Integer d;
        public final s87 e;
        public final w67 f;

        public a(Map<String, ?> map, boolean z, int i, int i2) {
            Boolean bool;
            s87 s87Var;
            w67 w67Var;
            this.a = m77.h(map, "timeout");
            int i3 = m77.b;
            if (map.containsKey("waitForReady")) {
                Object obj = map.get("waitForReady");
                if (!(obj instanceof Boolean)) {
                    throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Boolean", obj, "waitForReady", map));
                }
                bool = (Boolean) obj;
            } else {
                bool = null;
            }
            this.b = bool;
            Integer numE = m77.e(map, "maxResponseMessageBytes");
            this.c = numE;
            if (numE != null) {
                c50.o(numE.intValue() >= 0, "maxInboundMessageSize %s exceeds bounds", numE);
            }
            Integer numE2 = m77.e(map, "maxRequestMessageBytes");
            this.d = numE2;
            if (numE2 != null) {
                c50.o(numE2.intValue() >= 0, "maxOutboundMessageSize %s exceeds bounds", numE2);
            }
            Map<String, ?> mapF = z ? m77.f(map, "retryPolicy") : null;
            if (mapF == null) {
                s87Var = s87.f;
            } else {
                Integer numE3 = m77.e(mapF, "maxAttempts");
                c50.A(numE3, "maxAttempts cannot be empty");
                int iIntValue = numE3.intValue();
                c50.m(iIntValue >= 2, "maxAttempts must be greater than 1: %s", iIntValue);
                int iMin = Math.min(iIntValue, i);
                Long lH = m77.h(mapF, "initialBackoff");
                c50.A(lH, "initialBackoff cannot be empty");
                long jLongValue = lH.longValue();
                c50.n(jLongValue > 0, "initialBackoffNanos must be greater than 0: %s", jLongValue);
                Long lH2 = m77.h(mapF, "maxBackoff");
                c50.A(lH2, "maxBackoff cannot be empty");
                long jLongValue2 = lH2.longValue();
                c50.n(jLongValue2 > 0, "maxBackoff must be greater than 0: %s", jLongValue2);
                Double d = m77.d(mapF, "backoffMultiplier");
                c50.A(d, "backoffMultiplier cannot be empty");
                double dDoubleValue = d.doubleValue();
                c50.o(dDoubleValue > 0.0d, "backoffMultiplier must be greater than 0: %s", Double.valueOf(dDoubleValue));
                Set<x47.b> setQ0 = n56.Q0(mapF, "retryableStatusCodes");
                sd5.a(setQ0 != null, "%s is required in retry policy", "retryableStatusCodes");
                sd5.a(!setQ0.isEmpty(), "%s must not be empty", "retryableStatusCodes");
                sd5.a(!setQ0.contains(x47.b.OK), "%s must not contain OK", "retryableStatusCodes");
                s87Var = new s87(iMin, jLongValue, jLongValue2, dDoubleValue, setQ0);
            }
            this.e = s87Var;
            Map<String, ?> mapF2 = z ? m77.f(map, "hedgingPolicy") : null;
            if (mapF2 == null) {
                w67Var = w67.d;
            } else {
                Integer numE4 = m77.e(mapF2, "maxAttempts");
                c50.A(numE4, "maxAttempts cannot be empty");
                int iIntValue2 = numE4.intValue();
                c50.m(iIntValue2 >= 2, "maxAttempts must be greater than 1: %s", iIntValue2);
                int iMin2 = Math.min(iIntValue2, i2);
                Long lH3 = m77.h(mapF2, "hedgingDelay");
                c50.A(lH3, "hedgingDelay cannot be empty");
                long jLongValue3 = lH3.longValue();
                c50.n(jLongValue3 >= 0, "hedgingDelay must not be negative: %s", jLongValue3);
                Set<x47.b> setQ02 = n56.Q0(mapF2, "nonFatalStatusCodes");
                if (setQ02 == null) {
                    setQ02 = Collections.unmodifiableSet(EnumSet.noneOf(x47.b.class));
                } else {
                    sd5.a(!setQ02.contains(x47.b.OK), "%s must not contain OK", "nonFatalStatusCodes");
                }
                w67Var = new w67(iMin2, jLongValue3, setQ02);
            }
            this.f = w67Var;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return c50.T(this.a, aVar.a) && c50.T(this.b, aVar.b) && c50.T(this.c, aVar.c) && c50.T(this.d, aVar.d) && c50.T(this.e, aVar.e) && c50.T(this.f, aVar.f);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d, this.e, this.f});
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("timeoutNanos", this.a);
            nd5VarK0.d("waitForReady", this.b);
            nd5VarK0.d("maxInboundMessageSize", this.c);
            nd5VarK0.d("maxOutboundMessageSize", this.d);
            nd5VarK0.d("retryPolicy", this.e);
            nd5VarK0.d("hedgingPolicy", this.f);
            return nd5VarK0.toString();
        }
    }

    public b87(Map<String, a> map, Map<String, a> map2, r87.x xVar, Object obj) {
        this.a = Collections.unmodifiableMap(new HashMap(map));
        this.b = Collections.unmodifiableMap(new HashMap(map2));
        this.c = xVar;
        this.d = obj;
    }

    public static b87 a(Map<String, ?> map, boolean z, int i, int i2, Object obj) {
        r87.x xVar;
        Map<String, ?> mapF;
        if (!z || map == null || (mapF = m77.f(map, "retryThrottling")) == null) {
            xVar = null;
        } else {
            float fFloatValue = m77.d(mapF, "maxTokens").floatValue();
            float fFloatValue2 = m77.d(mapF, "tokenRatio").floatValue();
            c50.G(fFloatValue > 0.0f, "maxToken should be greater than zero");
            c50.G(fFloatValue2 > 0.0f, "tokenRatio should be greater than zero");
            xVar = new r87.x(fFloatValue, fFloatValue2);
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        List<?> listB = m77.b(map, "methodConfig");
        if (listB == null) {
            listB = null;
        } else {
            m77.a(listB);
        }
        if (listB == null) {
            return new b87(map2, map3, xVar, obj);
        }
        Iterator<?> it = listB.iterator();
        while (it.hasNext()) {
            Map map4 = (Map) it.next();
            a aVar = new a(map4, z, i, i2);
            List<?> listB2 = m77.b(map4, InetAddressKeys.KEY_NAME);
            if (listB2 == null) {
                listB2 = null;
            } else {
                m77.a(listB2);
            }
            c50.o((listB2 == null || listB2.isEmpty()) ? false : true, "no names in method config %s", map4);
            Iterator<?> it2 = listB2.iterator();
            while (it2.hasNext()) {
                Map map5 = (Map) it2.next();
                String strG = m77.g(map5, "service");
                int i3 = od5.a;
                c50.t(!(strG == null || strG.isEmpty()), "missing service name");
                String strG2 = m77.g(map5, "method");
                if (strG2 == null || strG2.isEmpty()) {
                    c50.o(!map3.containsKey(strG), "Duplicate service %s", strG);
                    map3.put(strG, aVar);
                } else {
                    String strA = j47.a(strG, strG2);
                    c50.o(!map2.containsKey(strA), "Duplicate method name %s", strA);
                    map2.put(strA, aVar);
                }
            }
        }
        return new b87(map2, map3, xVar, obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b87.class != obj.getClass()) {
            return false;
        }
        b87 b87Var = (b87) obj;
        return c50.T(this.a, b87Var.a) && c50.T(this.b, b87Var.b) && c50.T(this.c, b87Var.c) && c50.T(this.d, b87Var.d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d});
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("serviceMethodMap", this.a);
        nd5VarK0.d("serviceMap", this.b);
        nd5VarK0.d("retryThrottling", this.c);
        nd5VarK0.d("loadBalancingConfig", this.d);
        return nd5VarK0.toString();
    }
}
