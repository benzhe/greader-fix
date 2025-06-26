package defpackage;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class jo5 implements zn5, bo5 {
    public boolean a = true;
    public final JsonWriter b;
    public final Map<Class<?>, yn5<?>> c;
    public final Map<Class<?>, ao5<?>> d;
    public final yn5<Object> e;
    public final boolean f;

    public jo5(Writer writer, Map<Class<?>, yn5<?>> map, Map<Class<?>, ao5<?>> map2, yn5<Object> yn5Var, boolean z) {
        this.b = new JsonWriter(writer);
        this.c = map;
        this.d = map2;
        this.e = yn5Var;
        this.f = z;
    }

    @Override // defpackage.zn5
    public zn5 a(xn5 xn5Var, long j) throws IOException {
        String str = xn5Var.a;
        k();
        this.b.name(str);
        k();
        this.b.value(j);
        return this;
    }

    @Override // defpackage.zn5
    public zn5 b(String str, boolean z) throws IOException {
        k();
        this.b.name(str);
        k();
        this.b.value(z);
        return this;
    }

    @Override // defpackage.zn5
    public zn5 c(String str, long j) throws IOException {
        k();
        this.b.name(str);
        k();
        this.b.value(j);
        return this;
    }

    @Override // defpackage.zn5
    public zn5 d(String str, int i) throws IOException {
        k();
        this.b.name(str);
        k();
        this.b.value(i);
        return this;
    }

    @Override // defpackage.bo5
    public bo5 e(String str) throws IOException {
        k();
        this.b.value(str);
        return this;
    }

    @Override // defpackage.bo5
    public bo5 f(boolean z) throws IOException {
        k();
        this.b.value(z);
        return this;
    }

    @Override // defpackage.zn5
    public zn5 h(xn5 xn5Var, Object obj) throws IOException {
        return g(xn5Var.a, obj);
    }

    public jo5 i(Object obj, boolean z) throws IOException {
        int i = 0;
        if (z) {
            if (obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number)) {
                Object[] objArr = new Object[1];
                objArr[0] = obj == null ? null : obj.getClass();
                throw new wn5(String.format("%s cannot be encoded inline", objArr));
            }
        }
        if (obj == null) {
            this.b.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.b.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.b.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    i(it.next(), false);
                }
                this.b.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.b.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        g((String) key, entry.getValue());
                    } catch (ClassCastException e) {
                        throw new wn5(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                this.b.endObject();
                return this;
            }
            yn5<?> yn5Var = this.c.get(obj.getClass());
            if (yn5Var != null) {
                if (!z) {
                    this.b.beginObject();
                }
                yn5Var.a(obj, this);
                if (!z) {
                    this.b.endObject();
                }
                return this;
            }
            ao5<?> ao5Var = this.d.get(obj.getClass());
            if (ao5Var != null) {
                ao5Var.a(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String strName = ((Enum) obj).name();
                k();
                this.b.value(strName);
                return this;
            }
            yn5<Object> yn5Var2 = this.e;
            if (!z) {
                this.b.beginObject();
            }
            yn5Var2.a(obj, this);
            if (!z) {
                this.b.endObject();
            }
            return this;
        }
        if (obj instanceof byte[]) {
            k();
            this.b.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        this.b.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i < length) {
                this.b.value(r6[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                k();
                this.b.value(j);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                this.b.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                this.b.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                i(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                i(obj2, false);
            }
        }
        this.b.endArray();
        return this;
    }

    @Override // defpackage.zn5
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public jo5 g(String str, Object obj) throws IOException {
        if (this.f) {
            if (obj == null) {
                return this;
            }
            k();
            this.b.name(str);
            return i(obj, false);
        }
        k();
        this.b.name(str);
        if (obj != null) {
            return i(obj, false);
        }
        this.b.nullValue();
        return this;
    }

    public final void k() throws IOException {
        if (!this.a) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }
}
