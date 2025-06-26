package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import defpackage.d0;
import defpackage.j9;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* loaded from: classes.dex */
public class i8 extends n8 {
    public static final Class<?> b;
    public static final Constructor<?> c;
    public static final Method d;
    public static final Method e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        c = constructor;
        b = cls;
        d = method2;
        e = method;
    }

    public static boolean f(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface g(Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        try {
            Object objNewInstance = Array.newInstance(b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // defpackage.n8
    public Typeface a(Context context, x7 x7Var, Resources resources, int i) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Object objNewInstance;
        MappedByteBuffer map;
        FileInputStream fileInputStream;
        try {
            objNewInstance = c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        for (y7 y7Var : x7Var.a) {
            int i2 = y7Var.f;
            File fileK = d0.h.K(context);
            if (fileK == null) {
                map = null;
            } else {
                try {
                    if (d0.h.r(fileK, resources, i2)) {
                        try {
                            fileInputStream = new FileInputStream(fileK);
                        } catch (IOException unused2) {
                            map = null;
                        }
                        try {
                            FileChannel channel = fileInputStream.getChannel();
                            map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                            fileInputStream.close();
                        } finally {
                        }
                    } else {
                        map = null;
                    }
                } finally {
                    fileK.delete();
                }
            }
            if (map == null || !f(objNewInstance, map, y7Var.e, y7Var.b, y7Var.c)) {
                return null;
            }
        }
        return g(objNewInstance);
    }

    @Override // defpackage.n8
    public Typeface b(Context context, CancellationSignal cancellationSignal, j9.c[] cVarArr, int i) throws IllegalAccessException, InstantiationException, IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException, NegativeArraySizeException {
        Object objNewInstance;
        try {
            objNewInstance = c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        m4 m4Var = new m4();
        for (j9.c cVar : cVarArr) {
            Uri uri = cVar.a;
            ByteBuffer byteBufferQ = (ByteBuffer) m4Var.get(uri);
            if (byteBufferQ == null) {
                byteBufferQ = d0.h.Q(context, cancellationSignal, uri);
                m4Var.put(uri, byteBufferQ);
            }
            if (byteBufferQ == null || !f(objNewInstance, byteBufferQ, cVar.b, cVar.c, cVar.d)) {
                return null;
            }
        }
        Typeface typefaceG = g(objNewInstance);
        if (typefaceG == null) {
            return null;
        }
        return Typeface.create(typefaceG, i);
    }
}
