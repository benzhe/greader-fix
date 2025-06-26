package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import defpackage.d0;
import defpackage.j9;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class j8 extends h8 {
    public final Class<?> g;
    public final Constructor<?> h;
    public final Method i;
    public final Method j;
    public final Method k;
    public final Method l;
    public final Method m;

    public j8() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method methodP;
        Method method;
        Constructor<?> constructor;
        Method methodN;
        Method methodO;
        Method method2;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(new Class[0]);
            methodN = n(cls2);
            methodO = o(cls2);
            method2 = cls2.getMethod("freeze", new Class[0]);
            method = cls2.getMethod("abortCreation", new Class[0]);
            methodP = p(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            StringBuilder sbZ = jo.z("Unable to collect necessary methods for class ");
            sbZ.append(e.getClass().getName());
            Log.e("TypefaceCompatApi26Impl", sbZ.toString(), e);
            methodP = null;
            method = null;
            constructor = null;
            methodN = null;
            methodO = null;
            method2 = null;
        }
        this.g = cls;
        this.h = constructor;
        this.i = methodN;
        this.j = methodO;
        this.k = method2;
        this.l = method;
        this.m = methodP;
    }

    private Object m() {
        try {
            return this.h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // defpackage.h8, defpackage.n8
    public Typeface a(Context context, x7 x7Var, Resources resources, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!l()) {
            return super.a(context, x7Var, resources, i);
        }
        Object objM = m();
        if (objM == null) {
            return null;
        }
        for (y7 y7Var : x7Var.a) {
            if (!i(context, objM, y7Var.a, y7Var.e, y7Var.b, y7Var.c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(y7Var.d))) {
                h(objM);
                return null;
            }
        }
        if (k(objM)) {
            return j(objM);
        }
        return null;
    }

    @Override // defpackage.h8, defpackage.n8
    public Typeface b(Context context, CancellationSignal cancellationSignal, j9.c[] cVarArr, int i) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Typeface typefaceJ;
        boolean zBooleanValue;
        if (cVarArr.length < 1) {
            return null;
        }
        if (!l()) {
            j9.c cVar = (j9.c) n8.e(cVarArr, i, new m8(this));
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(cVar.a, "r", cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(cVar.c).setItalic(cVar.d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } finally {
                }
            } catch (IOException unused) {
                return null;
            }
        }
        k4<String, Typeface> k4Var = j9.a;
        HashMap map = new HashMap();
        for (j9.c cVar2 : cVarArr) {
            if (cVar2.e == 0) {
                Uri uri = cVar2.a;
                if (!map.containsKey(uri)) {
                    map.put(uri, d0.h.Q(context, cancellationSignal, uri));
                }
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Object objM = m();
        if (objM == null) {
            return null;
        }
        boolean z = false;
        for (j9.c cVar3 : cVarArr) {
            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(cVar3.a);
            if (byteBuffer != null) {
                try {
                    zBooleanValue = ((Boolean) this.j.invoke(objM, byteBuffer, Integer.valueOf(cVar3.b), null, Integer.valueOf(cVar3.c), Integer.valueOf(cVar3.d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                    zBooleanValue = false;
                }
                if (!zBooleanValue) {
                    h(objM);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            h(objM);
            return null;
        }
        if (k(objM) && (typefaceJ = j(objM)) != null) {
            return Typeface.create(typefaceJ, i);
        }
        return null;
    }

    @Override // defpackage.n8
    public Typeface d(Context context, Resources resources, int i, String str, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!l()) {
            return super.d(context, resources, i, str, i2);
        }
        Object objM = m();
        if (objM == null) {
            return null;
        }
        if (!i(context, objM, str, 0, -1, -1, null)) {
            h(objM);
            return null;
        }
        if (k(objM)) {
            return j(objM);
        }
        return null;
    }

    public final void h(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean i(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface j(Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        try {
            Object objNewInstance = Array.newInstance(this.g, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.m.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean k(Object obj) {
        try {
            return ((Boolean) this.k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean l() {
        if (this.i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.i != null;
    }

    public Method n(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public Method o(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    public Method p(Class<?> cls) throws NoSuchMethodException, SecurityException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
