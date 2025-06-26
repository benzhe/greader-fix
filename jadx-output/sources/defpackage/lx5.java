package defpackage;

import com.google.firebase.Timestamp;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class lx5 {
    public static final ConcurrentMap<Class<?>, a<?>> a = new ConcurrentHashMap();

    public static class a<T> {
        public final Class<T> a;
        public final Map<String, String> b;
        public final Map<String, Method> c;
        public final Map<String, Method> d;
        public final Map<String, Field> e;
        public final HashSet<String> f;
        public final HashSet<String> g;

        /* JADX WARN: Removed duplicated region for block: B:128:0x031a  */
        /* JADX WARN: Removed duplicated region for block: B:175:0x02bd A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(java.lang.Class<T> r15) throws java.lang.SecurityException {
            /*
                Method dump skipped, instructions count: 994
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: lx5.a.<init>(java.lang.Class):void");
        }

        public static String b(AccessibleObject accessibleObject) {
            if (accessibleObject.isAnnotationPresent(gp5.class)) {
                return ((gp5) accessibleObject.getAnnotation(gp5.class)).value();
            }
            return null;
        }

        public static String e(Field field) {
            String strB = b(field);
            return strB != null ? strB : field.getName();
        }

        public static String f(Method method) {
            String strB = b(method);
            if (strB != null) {
                return strB;
            }
            String name = method.getName();
            String[] strArr = {"get", "set", "is"};
            String str = null;
            for (int i = 0; i < 3; i++) {
                String str2 = strArr[i];
                if (name.startsWith(str2)) {
                    str = str2;
                }
            }
            if (str == null) {
                throw new IllegalArgumentException(jo.n("Unknown Bean prefix for method: ", name));
            }
            char[] charArray = name.substring(str.length()).toCharArray();
            for (int i2 = 0; i2 < charArray.length && Character.isUpperCase(charArray[i2]); i2++) {
                charArray[i2] = Character.toLowerCase(charArray[i2]);
            }
            return new String(charArray);
        }

        public final void a(String str) {
            Map<String, String> map = this.b;
            Locale locale = Locale.US;
            String strPut = map.put(str.toLowerCase(locale), str);
            if (strPut == null || str.equals(strPut)) {
                return;
            }
            StringBuilder sbZ = jo.z("Found two getters or fields with conflicting case sensitivity for property: ");
            sbZ.append(str.toLowerCase(locale));
            throw new RuntimeException(sbZ.toString());
        }

        public final void c(Field field) {
            if (field.isAnnotationPresent(ip5.class)) {
                Class<?> type = field.getType();
                if (type != Date.class && type != Timestamp.class) {
                    StringBuilder sbZ = jo.z("Field ");
                    sbZ.append(field.getName());
                    sbZ.append(" is annotated with @ServerTimestamp but is ");
                    sbZ.append(type);
                    sbZ.append(" instead of Date or Timestamp.");
                    throw new IllegalArgumentException(sbZ.toString());
                }
                this.f.add(e(field));
            }
            if (field.isAnnotationPresent(qo5.class)) {
                d("Field", "is", field.getType());
                this.g.add(e(field));
            }
        }

        public final void d(String str, String str2, Type type) {
            if (type == String.class || type == to5.class) {
                return;
            }
            throw new IllegalArgumentException(str + " is annotated with @DocumentId but " + str2 + StringUtils.SPACE + type + " instead of String or DocumentReference.");
        }
    }

    public static class b {
        public static final b d = new b(null, null, 0);
        public final int a;
        public final b b;
        public final String c;

        public b(b bVar, String str, int i) {
            this.b = bVar;
            this.c = str;
            this.a = i;
        }

        public b a(String str) {
            return new b(this, str, this.a + 1);
        }

        public String toString() {
            int i = this.a;
            if (i == 0) {
                return "";
            }
            if (i == 1) {
                return this.c;
            }
            return this.b.toString() + "." + this.c;
        }
    }

    public static void a(boolean z, String str) {
        if (!z) {
            throw new RuntimeException(jo.n("Hard assert failed: ", str));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Object b(T t, b bVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        if (bVar.a > 500) {
            throw c(bVar, "Exceeded maximum depth of 500, which likely indicates there's an object cycle");
        }
        if (t == 0) {
            return null;
        }
        if (t instanceof Number) {
            if ((t instanceof Long) || (t instanceof Integer) || (t instanceof Double) || (t instanceof Float)) {
                return t;
            }
            throw c(bVar, String.format("Numbers of type %s are not supported, please use an int, long, float or double", t.getClass().getSimpleName()));
        }
        if ((t instanceof String) || (t instanceof Boolean)) {
            return t;
        }
        if (t instanceof Character) {
            throw c(bVar, "Characters are not supported, please use Strings");
        }
        if (t instanceof Map) {
            HashMap map = new HashMap();
            for (Map.Entry entry : ((Map) t).entrySet()) {
                Object key = entry.getKey();
                if (!(key instanceof String)) {
                    throw c(bVar, "Maps with non-string keys are not supported");
                }
                String str = (String) key;
                map.put(str, b(entry.getValue(), bVar.a(str)));
            }
            return map;
        }
        if (t instanceof Collection) {
            if (!(t instanceof List)) {
                throw c(bVar, "Serializing Collections is not supported, please use Lists instead");
            }
            List list = (List) t;
            ArrayList arrayList = new ArrayList(list.size());
            for (int i = 0; i < list.size(); i++) {
                arrayList.add(b(list.get(i), bVar.a("[" + i + "]")));
            }
            return arrayList;
        }
        if (t.getClass().isArray()) {
            throw c(bVar, "Serializing Arrays is not supported, please use Lists instead");
        }
        if (t instanceof Enum) {
            String strName = ((Enum) t).name();
            try {
                return a.e(t.getClass().getField(strName));
            } catch (NoSuchFieldException unused) {
                return strName;
            }
        }
        if ((t instanceof Date) || (t instanceof Timestamp) || (t instanceof dp5) || (t instanceof oo5) || (t instanceof to5) || (t instanceof yo5)) {
            return t;
        }
        Class<?> cls = t.getClass();
        ConcurrentMap<Class<?>, a<?>> concurrentMap = a;
        a<?> aVar = concurrentMap.get(cls);
        if (aVar == null) {
            aVar = new a<>(cls);
            concurrentMap.put(cls, aVar);
        }
        if (!aVar.a.isAssignableFrom(t.getClass())) {
            StringBuilder sbZ = jo.z("Can't serialize object of class ");
            sbZ.append(t.getClass());
            sbZ.append(" with BeanMapper for class ");
            sbZ.append(aVar.a);
            throw new IllegalArgumentException(sbZ.toString());
        }
        HashMap map2 = new HashMap();
        for (String str2 : aVar.b.values()) {
            if (!aVar.g.contains(str2)) {
                if (aVar.c.containsKey(str2)) {
                    try {
                        objInvoke = aVar.c.get(str2).invoke(t, new Object[0]);
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                } else {
                    Field field = aVar.e.get(str2);
                    if (field == null) {
                        throw new IllegalStateException(jo.n("Bean property without field or getter: ", str2));
                    }
                    try {
                        objInvoke = field.get(t);
                    } catch (IllegalAccessException e3) {
                        throw new RuntimeException(e3);
                    }
                }
                map2.put(str2, (aVar.f.contains(str2) && objInvoke == null) ? yo5.a : b(objInvoke, bVar.a(str2)));
            }
        }
        return map2;
    }

    public static IllegalArgumentException c(b bVar, String str) {
        String strN = jo.n("Could not serialize object. ", str);
        if (bVar.a > 0) {
            StringBuilder sbB = jo.B(strN, " (found in field '");
            sbB.append(bVar.toString());
            sbB.append("')");
            strN = sbB.toString();
        }
        return new IllegalArgumentException(strN);
    }
}
