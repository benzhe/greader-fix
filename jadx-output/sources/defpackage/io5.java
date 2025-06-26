package defpackage;

import defpackage.io5;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class io5 implements do5<io5> {
    public static final a e = new a(null);
    public final Map<Class<?>, yn5<?>> a;
    public final Map<Class<?>, ao5<?>> b;
    public yn5<Object> c;
    public boolean d;

    public static final class a implements ao5<Date> {
        public static final DateFormat a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public a(ho5 ho5Var) {
        }

        @Override // defpackage.vn5
        public void a(Object obj, bo5 bo5Var) throws IOException {
            bo5Var.e(a.format((Date) obj));
        }
    }

    public io5() {
        HashMap map = new HashMap();
        this.a = map;
        HashMap map2 = new HashMap();
        this.b = map2;
        this.c = new yn5() { // from class: eo5
            @Override // defpackage.vn5
            public void a(Object obj, zn5 zn5Var) {
                io5.a aVar = io5.e;
                StringBuilder sbZ = jo.z("Couldn't find encoder for type ");
                sbZ.append(obj.getClass().getCanonicalName());
                throw new wn5(sbZ.toString());
            }
        };
        this.d = false;
        map2.put(String.class, new ao5() { // from class: fo5
            @Override // defpackage.vn5
            public void a(Object obj, bo5 bo5Var) throws IOException {
                io5.a aVar = io5.e;
                bo5Var.e((String) obj);
            }
        });
        map.remove(String.class);
        map2.put(Boolean.class, new ao5() { // from class: go5
            @Override // defpackage.vn5
            public void a(Object obj, bo5 bo5Var) throws IOException {
                io5.a aVar = io5.e;
                bo5Var.f(((Boolean) obj).booleanValue());
            }
        });
        map.remove(Boolean.class);
        map2.put(Date.class, e);
        map.remove(Date.class);
    }
}
