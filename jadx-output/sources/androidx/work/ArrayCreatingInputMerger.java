package androidx.work;

import defpackage.sj;
import defpackage.uj;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ArrayCreatingInputMerger extends uj {
    @Override // defpackage.uj
    public sj a(List<sj> list) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        Object objNewInstance;
        sj.a aVar = new sj.a();
        HashMap map = new HashMap();
        Iterator<sj> it = list.iterator();
        while (it.hasNext()) {
            for (Map.Entry entry : Collections.unmodifiableMap(it.next().a).entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj = map.get(str);
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (cls2.equals(cls)) {
                        if (cls2.isArray()) {
                            int length = Array.getLength(obj);
                            int length2 = Array.getLength(value);
                            Object objNewInstance2 = Array.newInstance(obj.getClass().getComponentType(), length + length2);
                            System.arraycopy(obj, 0, objNewInstance2, 0, length);
                            System.arraycopy(value, 0, objNewInstance2, length, length2);
                            value = objNewInstance2;
                        } else {
                            objNewInstance = Array.newInstance(obj.getClass(), 2);
                            Array.set(objNewInstance, 0, obj);
                            Array.set(objNewInstance, 1, value);
                            value = objNewInstance;
                        }
                    } else if (cls2.isArray() && cls2.getComponentType().equals(cls)) {
                        value = b(obj, value);
                    } else {
                        if (!cls.isArray() || !cls.getComponentType().equals(cls2)) {
                            throw new IllegalArgumentException();
                        }
                        value = b(value, obj);
                    }
                } else if (!cls.isArray()) {
                    objNewInstance = Array.newInstance(value.getClass(), 1);
                    Array.set(objNewInstance, 0, value);
                    value = objNewInstance;
                }
                map.put(str, value);
            }
        }
        aVar.b(map);
        return aVar.a();
    }

    public final Object b(Object obj, Object obj2) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        int length = Array.getLength(obj);
        Object objNewInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, objNewInstance, 0, length);
        Array.set(objNewInstance, length, obj2);
        return objNewInstance;
    }
}
