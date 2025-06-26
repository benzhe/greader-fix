package defpackage;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzwc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class en2 implements bn2 {
    public final Object[] a;

    public en2(zzvq zzvqVar, String str, int i, String str2, zzwc zzwcVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzvqVar.f));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(zzvqVar.g));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzvqVar.g.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzvqVar.h));
        }
        if (hashSet.contains("keywords")) {
            List<String> list = zzvqVar.i;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzvqVar.j));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzvqVar.k));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzvqVar.l));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzvqVar.m);
        }
        if (hashSet.contains("location")) {
            Location location = zzvqVar.o;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzvqVar.p);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(zzvqVar.q));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(zzvqVar.r));
        }
        if (hashSet.contains("categoryExclusions")) {
            List<String> list2 = zzvqVar.s;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzvqVar.t);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzvqVar.u);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzvqVar.v));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzvqVar.x));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzvqVar.y);
        }
        if (hashSet.contains("orientation")) {
            if (zzwcVar != null) {
                arrayList.add(Integer.valueOf(zzwcVar.e));
            } else {
                arrayList.add(null);
            }
        }
        this.a = arrayList.toArray();
    }

    public static String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? a((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // defpackage.bn2
    public final boolean equals(Object obj) {
        if (obj instanceof en2) {
            return Arrays.equals(this.a, ((en2) obj).a);
        }
        return false;
    }

    @Override // defpackage.bn2
    public final int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public final String toString() {
        int iHashCode = hashCode();
        String string = Arrays.toString(this.a);
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 22);
        sb.append("[PoolKey#");
        sb.append(iHashCode);
        sb.append(StringUtils.SPACE);
        sb.append(string);
        sb.append("]");
        return sb.toString();
    }
}
