package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class em7 implements hn7<Object>, dm7 {
    public static final Map<Class<? extends kj7<?>>, Integer> f;
    public static final HashMap<String, String> g;
    public static final HashMap<String, String> h;
    public static final HashMap<String, String> i;
    public static final a j = new a(null);
    public final Class<?> e;

    public static final class a {
        public a(gm7 gm7Var) {
        }
    }

    static {
        int i2 = 0;
        List listL = ek7.l(el7.class, pl7.class, tl7.class, ul7.class, vl7.class, wl7.class, xl7.class, yl7.class, zl7.class, am7.class, fl7.class, gl7.class, hl7.class, il7.class, jl7.class, kl7.class, ll7.class, ml7.class, nl7.class, ol7.class, ql7.class, rl7.class, sl7.class);
        ArrayList arrayList = new ArrayList(n56.x(listL, 10));
        for (Object obj : listL) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                ek7.q();
                throw null;
            }
            arrayList.add(new rj7((Class) obj, Integer.valueOf(i2)));
            i2 = i3;
        }
        f = ek7.t(arrayList);
        HashMap<String, String> mapE = jo.E("boolean", "kotlin.Boolean", "char", "kotlin.Char");
        mapE.put("byte", "kotlin.Byte");
        mapE.put("short", "kotlin.Short");
        mapE.put("int", "kotlin.Int");
        mapE.put("float", "kotlin.Float");
        mapE.put("long", "kotlin.Long");
        mapE.put("double", "kotlin.Double");
        g = mapE;
        HashMap<String, String> mapE2 = jo.E("java.lang.Boolean", "kotlin.Boolean", "java.lang.Character", "kotlin.Char");
        mapE2.put("java.lang.Byte", "kotlin.Byte");
        mapE2.put("java.lang.Short", "kotlin.Short");
        mapE2.put("java.lang.Integer", "kotlin.Int");
        mapE2.put("java.lang.Float", "kotlin.Float");
        mapE2.put("java.lang.Long", "kotlin.Long");
        mapE2.put("java.lang.Double", "kotlin.Double");
        h = mapE2;
        HashMap<String, String> mapE3 = jo.E("java.lang.Object", "kotlin.Any", "java.lang.String", "kotlin.String");
        mapE3.put("java.lang.CharSequence", "kotlin.CharSequence");
        mapE3.put("java.lang.Throwable", "kotlin.Throwable");
        mapE3.put("java.lang.Cloneable", "kotlin.Cloneable");
        mapE3.put("java.lang.Number", "kotlin.Number");
        mapE3.put("java.lang.Comparable", "kotlin.Comparable");
        mapE3.put("java.lang.Enum", "kotlin.Enum");
        mapE3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        mapE3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        mapE3.put("java.util.Iterator", "kotlin.collections.Iterator");
        mapE3.put("java.util.Collection", "kotlin.collections.Collection");
        mapE3.put("java.util.List", "kotlin.collections.List");
        mapE3.put("java.util.Set", "kotlin.collections.Set");
        mapE3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        mapE3.put("java.util.Map", "kotlin.collections.Map");
        mapE3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        mapE3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        mapE3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        mapE3.putAll(mapE);
        mapE3.putAll(mapE2);
        Collection<String> collectionValues = mapE.values();
        im7.d(collectionValues, "primitiveFqNames.values");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            im7.d(str, "kotlinName");
            sb.append(co7.C(str, FilenameUtils.EXTENSION_SEPARATOR, null, 2));
            sb.append("CompanionObject");
            mapE3.put(sb.toString(), str + ".Companion");
        }
        for (Map.Entry<Class<? extends kj7<?>>, Integer> entry : f.entrySet()) {
            mapE3.put(entry.getKey().getName(), "kotlin.Function" + entry.getValue().intValue());
        }
        i = mapE3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(n56.v1(mapE3.size()));
        Iterator<T> it = mapE3.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            linkedHashMap.put(entry2.getKey(), co7.C((String) entry2.getValue(), FilenameUtils.EXTENSION_SEPARATOR, null, 2));
        }
    }

    public em7(Class<?> cls) {
        im7.e(cls, "jClass");
        this.e = cls;
    }

    @Override // defpackage.hn7
    public boolean a(Object obj) {
        Class<?> clsN0 = this.e;
        im7.e(clsN0, "jClass");
        Map<Class<? extends kj7<?>>, Integer> map = f;
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, V>");
        Integer num = map.get(clsN0);
        if (num == null) {
            if (clsN0.isPrimitive()) {
                im7.e(clsN0, "$this$kotlin");
                clsN0 = n56.N0(sm7.a(clsN0));
            }
            return clsN0.isInstance(obj);
        }
        int iIntValue = num.intValue();
        if (obj instanceof kj7) {
            if ((obj instanceof hm7 ? ((hm7) obj).getArity() : obj instanceof el7 ? 0 : obj instanceof pl7 ? 1 : obj instanceof tl7 ? 2 : obj instanceof ul7 ? 3 : obj instanceof vl7 ? 4 : obj instanceof wl7 ? 5 : obj instanceof xl7 ? 6 : obj instanceof yl7 ? 7 : obj instanceof zl7 ? 8 : obj instanceof am7 ? 9 : obj instanceof fl7 ? 10 : obj instanceof gl7 ? 11 : obj instanceof hl7 ? 12 : obj instanceof il7 ? 13 : obj instanceof jl7 ? 14 : obj instanceof kl7 ? 15 : obj instanceof ll7 ? 16 : obj instanceof ml7 ? 17 : obj instanceof nl7 ? 18 : obj instanceof ol7 ? 19 : obj instanceof ql7 ? 20 : obj instanceof rl7 ? 21 : obj instanceof sl7 ? 22 : -1) == iIntValue) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.dm7
    public Class<?> b() {
        return this.e;
    }

    public boolean equals(Object obj) {
        return (obj instanceof em7) && im7.a(n56.N0(this), n56.N0((hn7) obj));
    }

    @Override // defpackage.hn7
    public int hashCode() {
        return n56.N0(this).hashCode();
    }

    public String toString() {
        return this.e.toString() + " (Kotlin reflection is not available)";
    }
}
