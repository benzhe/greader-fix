package defpackage;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzap;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.R$string;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzdwt;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.eq3;
import defpackage.g23;
import defpackage.la5;
import defpackage.m23;
import defpackage.uc1;
import defpackage.w65;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigInteger;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.ECField;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import okhttp3.internal.http2.Settings;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.time.TimeZones;
import org.apache.commons.text.StringSubstitutor;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c50 {
    public static String a;
    public static c35 b;

    public static <T> T A(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int A0(int i) {
        if (i >= 200 && i <= 299) {
            return 0;
        }
        if (i >= 300 && i <= 399) {
            return 1;
        }
        if (i >= 400 && i <= 499) {
            return 0;
        }
        if (i >= 500) {
        }
        return 1;
    }

    public static File A1(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static byte[] A2(InputStream inputStream, int i, ml0 ml0Var) throws Throwable {
        byte[] bArrB;
        my0 my0Var = new my0(ml0Var, i);
        try {
            bArrB = ml0Var.b(1024);
            while (true) {
                try {
                    int i2 = inputStream.read(bArrB);
                    if (i2 == -1) {
                        break;
                    }
                    my0Var.write(bArrB, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            tg0.c("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    ml0Var.a(bArrB);
                    my0Var.close();
                    throw th;
                }
            }
            byte[] byteArray = my0Var.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                tg0.c("Error occurred when closing InputStream", new Object[0]);
            }
            ml0Var.a(bArrB);
            my0Var.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArrB = null;
        }
    }

    public static String A3(String str, Context context, boolean z) {
        String strL;
        if ((((Boolean) os3.j.f.a(y40.e0)).booleanValue() && !z) || !zzr.zzlt().h(context) || TextUtils.isEmpty(str) || (strL = zzr.zzlt().l(context)) == null) {
            return str;
        }
        if (!((Boolean) os3.j.f.a(y40.W)).booleanValue()) {
            if (str.contains("fbs_aeid")) {
                return str;
            }
            if (zzr.zzkv().zzek(str)) {
                zzr.zzlt().d(context, "_ac", strL, null);
                return l1(Y2(str, context), "fbs_aeid", strL).toString();
            }
            if (!zzr.zzkv().zzel(str)) {
                return str;
            }
            zzr.zzlt().d(context, "_ai", strL, null);
            return l1(Y2(str, context), "fbs_aeid", strL).toString();
        }
        String str2 = (String) os3.j.f.a(y40.X);
        if (!str.contains(str2)) {
            return str;
        }
        if (zzr.zzkv().zzek(str)) {
            zzr.zzlt().d(context, "_ac", strL, null);
            return Y2(str, context).replace(str2, strL);
        }
        if (!zzr.zzkv().zzel(str)) {
            return str;
        }
        zzr.zzlt().d(context, "_ai", strL, null);
        return Y2(str, context).replace(str2, strL);
    }

    @Deprecated
    public static final dx2 A4(byte[] bArr) throws GeneralSecurityException {
        try {
            m23 m23VarB = m23.B(bArr, e63.a());
            for (m23.b bVar : m23VarB.y()) {
                if (bVar.A().D() == g23.a.UNKNOWN_KEYMATERIAL || bVar.A().D() == g23.a.SYMMETRIC || bVar.A().D() == g23.a.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            if (m23VarB.z() > 0) {
                return new dx2(m23VarB);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (e73 unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }

    public static <T> T B(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static PorterDuff.Mode B0(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static File B1(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        A1(file2, false);
        return file2;
    }

    public static final byte[] B2(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (i3 < 0 || bArr.length - i3 < i || bArr2.length - i3 < i2) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        byte[] bArr3 = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            bArr3[i4] = (byte) (bArr[i4 + i] ^ bArr2[i4 + i2]);
        }
        return bArr3;
    }

    public static /* synthetic */ void B3(byte b2, byte b3, char[] cArr, int i) throws l94 {
        if (b2 < -62 || f4(b3)) {
            throw l94.d();
        }
        cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
    }

    public static String B4(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (i == 0) {
                cCharAt = Character.toLowerCase(cCharAt);
            } else if (Character.isUpperCase(cCharAt)) {
                stringBuffer.append('_');
                cCharAt = Character.toLowerCase(cCharAt);
            }
            stringBuffer.append(cCharAt);
        }
        return stringBuffer.toString();
    }

    public static void C(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? f(i, i3, "start index") : (i2 < 0 || i2 > i3) ? f(i2, i3, "end index") : q0("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void C0(AnimatorSet animatorSet, List<Animator> list) {
        int size = list.size();
        long jMax = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
        valueAnimatorOfInt.setDuration(jMax);
        list.add(0, valueAnimatorOfInt);
        animatorSet.playTogether(list);
    }

    public static File C1(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(B1(str, file), str2);
    }

    public static byte[] C2(byte[]... bArr) throws GeneralSecurityException {
        int length = 0;
        for (byte[] bArr2 : bArr) {
            if (length > Integer.MAX_VALUE - bArr2.length) {
                throw new GeneralSecurityException("exceeded size limit");
            }
            length += bArr2.length;
        }
        byte[] bArr3 = new byte[length];
        int length2 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
            length2 += bArr4.length;
        }
        return bArr3;
    }

    public static void C3(da4 da4Var, StringBuilder sb, int i) throws SecurityException {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : da4Var.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strValueOf = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf2 = String.valueOf(strSubstring.substring(1, strSubstring.length() - 4));
                String strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    i3(sb, i, J3(strConcat), c94.j(method2, da4Var, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String strValueOf3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf4 = String.valueOf(strSubstring.substring(1, strSubstring.length() - 3));
                String strConcat2 = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    i3(sb, i, J3(strConcat2), c94.j(method3, da4Var, new Object[0]));
                }
            }
            if (((Method) map2.get(strSubstring.length() != 0 ? "set".concat(strSubstring) : new String("set"))) != null) {
                if (strSubstring.endsWith("Bytes")) {
                    String strValueOf5 = String.valueOf(strSubstring.substring(0, strSubstring.length() - 5));
                    if (!map.containsKey(strValueOf5.length() != 0 ? "get".concat(strValueOf5) : new String("get"))) {
                    }
                }
                String strValueOf6 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf7 = String.valueOf(strSubstring.substring(1));
                String strConcat3 = strValueOf7.length() != 0 ? strValueOf6.concat(strValueOf7) : new String(strValueOf6);
                Method method4 = (Method) map.get(strSubstring.length() != 0 ? "get".concat(strSubstring) : new String("get"));
                Method method5 = (Method) map.get(strSubstring.length() != 0 ? "has".concat(strSubstring) : new String("has"));
                if (method4 != null) {
                    Object objJ = c94.j(method4, da4Var, new Object[0]);
                    if (method5 == null) {
                        if (objJ instanceof Boolean) {
                            if (((Boolean) objJ).booleanValue()) {
                                i3(sb, i, J3(strConcat3), objJ);
                            }
                        } else if (objJ instanceof Integer) {
                            if (((Integer) objJ).intValue() != 0) {
                                i3(sb, i, J3(strConcat3), objJ);
                            }
                        } else if (objJ instanceof Float) {
                            if (((Float) objJ).floatValue() != 0.0f) {
                                i3(sb, i, J3(strConcat3), objJ);
                            }
                        } else if (!(objJ instanceof Double)) {
                            if (objJ instanceof String) {
                                zEquals = objJ.equals("");
                            } else if (objJ instanceof g84) {
                                zEquals = objJ.equals(g84.f);
                            } else if (objJ instanceof da4) {
                                if (objJ != ((da4) objJ).f()) {
                                    i3(sb, i, J3(strConcat3), objJ);
                                }
                            } else if (!(objJ instanceof Enum) || ((Enum) objJ).ordinal() != 0) {
                                i3(sb, i, J3(strConcat3), objJ);
                            }
                            if (!zEquals) {
                                i3(sb, i, J3(strConcat3), objJ);
                            }
                        } else if (((Double) objJ).doubleValue() != 0.0d) {
                            i3(sb, i, J3(strConcat3), objJ);
                        }
                    } else if (((Boolean) c94.j(method5, da4Var, new Object[0])).booleanValue()) {
                        i3(sb, i, J3(strConcat3), objJ);
                    }
                }
            }
        }
        if (da4Var instanceof a94) {
            throw null;
        }
        bb4 bb4Var = ((c94) da4Var).zzc;
        if (bb4Var != null) {
            for (int i2 = 0; i2 < bb4Var.a; i2++) {
                i3(sb, i, String.valueOf(bb4Var.b[i2] >>> 3), bb4Var.c[i2]);
            }
        }
    }

    public static int C4(na4<?> na4Var, int i, byte[] bArr, int i2, int i3, i94<?> i94Var, w74 w74Var) throws IOException {
        int iP4 = p4(na4Var, bArr, i2, i3, w74Var);
        i94Var.add(w74Var.c);
        while (iP4 < i3) {
            int iI1 = i1(bArr, iP4, w74Var);
            if (i != w74Var.a) {
                break;
            }
            iP4 = p4(na4Var, bArr, iI1, i3, w74Var);
            i94Var.add(w74Var.c);
        }
        return iP4;
    }

    public static void D(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static String D0(String str) {
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length() - 1;
        char cCharAt = sb.charAt(length);
        bx5.c(cCharAt == 1, "successor may only operate on paths generated by encode", new Object[0]);
        sb.setCharAt(length, (char) (cCharAt + 1));
        return sb.toString();
    }

    public static <T> T D1(Context context, String str, ks0<IBinder, T> ks0Var) throws js0 {
        try {
            try {
                return ks0Var.apply(DynamiteModule.d(context, DynamiteModule.i, ModuleDescriptor.MODULE_ID).c(str));
            } catch (Exception e) {
                throw new js0(e);
            }
        } catch (Exception e2) {
            throw new js0(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0015 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[] D2(java.nio.ByteBuffer r20, java.util.Map<java.lang.Integer, byte[]> r21, java.security.cert.CertificateFactory r22) throws java.security.spec.InvalidKeySpecException, java.security.NoSuchAlgorithmException, java.security.SignatureException, java.io.IOException, java.security.InvalidKeyException, java.lang.SecurityException, java.security.InvalidAlgorithmParameterException {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.D2(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String D3(android.content.Context r10) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.D3(android.content.Context):java.lang.String");
    }

    public static int D4(int i, byte[] bArr, int i2, int i3, bb4 bb4Var, w74 w74Var) throws l94 {
        if ((i >>> 3) == 0) {
            throw new l94("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iV3 = v3(bArr, i2, w74Var);
            bb4Var.c(i, Long.valueOf(w74Var.b));
            return iV3;
        }
        if (i4 == 1) {
            bb4Var.c(i, Long.valueOf(O3(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iI1 = i1(bArr, i2, w74Var);
            int i5 = w74Var.a;
            if (i5 < 0) {
                throw l94.b();
            }
            if (i5 > bArr.length - iI1) {
                throw l94.a();
            }
            if (i5 == 0) {
                bb4Var.c(i, g84.f);
            } else {
                bb4Var.c(i, g84.s(bArr, iI1, i5));
            }
            return iI1 + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new l94("Protocol message contained an invalid tag (zero).");
            }
            bb4Var.c(i, Integer.valueOf(E3(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        bb4 bb4VarA = bb4.a();
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iI12 = i1(bArr, i2, w74Var);
            int i8 = w74Var.a;
            if (i8 == i6) {
                i7 = i8;
                i2 = iI12;
                break;
            }
            i7 = i8;
            i2 = D4(i8, bArr, iI12, i3, bb4VarA, w74Var);
        }
        if (i2 > i3 || i7 != i6) {
            throw l94.c();
        }
        bb4Var.c(i, bb4VarA);
        return i2;
    }

    public static void E(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static TypedValue E0(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static <V> V E1(l64<V> l64Var) {
        try {
            return l64Var.a();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return l64Var.a();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public static byte[][] E2(int[] iArr, gg1[] gg1VarArr) throws DigestException {
        gg1[] gg1VarArr2 = gg1VarArr;
        long j = 0;
        long size = 0;
        for (gg1 gg1Var : gg1VarArr2) {
            size += ((gg1Var.size() + 1048576) - 1) / 1048576;
        }
        if (size >= 2097151) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Too many chunks: ");
            sb.append(size);
            throw new DigestException(sb.toString());
        }
        int i = (int) size;
        byte[][] bArr = new byte[iArr.length][];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            byte[] bArr2 = new byte[(q3(iArr[i2]) * i) + 5];
            bArr2[0] = 90;
            Y1(i, bArr2);
            bArr[i2] = bArr2;
        }
        byte[] bArr3 = new byte[5];
        bArr3[0] = -91;
        int length = iArr.length;
        MessageDigest[] messageDigestArr = new MessageDigest[length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            String strX2 = X2(iArr[i3]);
            try {
                messageDigestArr[i3] = MessageDigest.getInstance(strX2);
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(strX2.concat(" digest not supported"), e);
            }
        }
        int length2 = gg1VarArr2.length;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length2) {
            gg1 gg1Var2 = gg1VarArr2[i4];
            int i7 = length2;
            int i8 = i4;
            long size2 = gg1Var2.size();
            long j2 = j;
            while (size2 > j) {
                int iMin = (int) Math.min(size2, 1048576L);
                Y1(iMin, bArr3);
                for (int i9 = 0; i9 < length; i9++) {
                    messageDigestArr[i9].update(bArr3);
                }
                try {
                    gg1Var2.a(messageDigestArr, j2, iMin);
                    int i10 = 0;
                    while (i10 < iArr.length) {
                        int i11 = iArr[i10];
                        byte[] bArr4 = bArr3;
                        byte[] bArr5 = bArr[i10];
                        int iQ3 = q3(i11);
                        int i12 = length;
                        MessageDigest messageDigest = messageDigestArr[i10];
                        MessageDigest[] messageDigestArr2 = messageDigestArr;
                        int iDigest = messageDigest.digest(bArr5, (i6 * iQ3) + 5, iQ3);
                        if (iDigest != iQ3) {
                            String algorithm = messageDigest.getAlgorithm();
                            StringBuilder sb2 = new StringBuilder(jo.x(algorithm, 46));
                            sb2.append("Unexpected output size of ");
                            sb2.append(algorithm);
                            sb2.append(" digest: ");
                            sb2.append(iDigest);
                            throw new RuntimeException(sb2.toString());
                        }
                        i10++;
                        bArr3 = bArr4;
                        length = i12;
                        messageDigestArr = messageDigestArr2;
                    }
                    long j3 = iMin;
                    j2 += j3;
                    size2 -= j3;
                    i6++;
                    j = 0;
                    bArr3 = bArr3;
                } catch (IOException e2) {
                    throw new DigestException(jo.N(59, "Failed to digest chunk #", i6, " of section #", i5), e2);
                }
            }
            i5++;
            i4 = i8 + 1;
            j = 0;
            gg1VarArr2 = gg1VarArr;
            length2 = i7;
        }
        byte[][] bArr6 = new byte[iArr.length][];
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            byte[] bArr7 = bArr[i13];
            String strX22 = X2(i14);
            try {
                bArr6[i13] = MessageDigest.getInstance(strX22).digest(bArr7);
            } catch (NoSuchAlgorithmException e3) {
                throw new RuntimeException(strX22.concat(" digest not supported"), e3);
            }
        }
        return bArr6;
    }

    public static int E3(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static byte[] E4(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("value must be a block.");
        }
        byte[] bArr2 = new byte[16];
        for (int i = 0; i < 16; i++) {
            bArr2[i] = (byte) ((bArr[i] << 1) & 254);
            if (i < 15) {
                bArr2[i] = (byte) (bArr2[i] | ((byte) ((bArr[i + 1] >> 7) & 1)));
            }
        }
        bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
        return bArr2;
    }

    public static void F(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalStateException(q0(str, obj));
        }
    }

    public static boolean F0(Context context, int i, boolean z) {
        TypedValue typedValueE0 = E0(context, i);
        return (typedValueE0 == null || typedValueE0.type != 18) ? z : typedValueE0.data != 0;
    }

    public static <TResult> TResult F1(e45<TResult> e45Var) throws ExecutionException {
        if (e45Var.o()) {
            return e45Var.l();
        }
        if (e45Var.m()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(e45Var.k());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[][] F2(java.lang.String r19) throws defpackage.td3, java.io.IOException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 703
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.F2(java.lang.String):java.security.cert.X509Certificate[][]");
    }

    public static int F3(byte[] bArr, int i, g53 g53Var) throws e73 {
        int iE1 = e1(bArr, i, g53Var);
        int i2 = g53Var.a;
        if (i2 < 0) {
            throw e73.b();
        }
        if (i2 == 0) {
            g53Var.c = "";
            return iE1;
        }
        g53Var.c = u93.e(bArr, iE1, i2);
        return iE1 + i2;
    }

    public static int F4(int i, int i2) {
        String strA3;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strA3 = a3("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new IllegalArgumentException(jo.M(26, "negative size: ", i2));
            }
            strA3 = a3("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strA3);
    }

    public static void G(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static int G0(Context context, int i, String str) {
        TypedValue typedValueE0 = E0(context, i);
        if (typedValueE0 != null) {
            return typedValueE0.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    public static <T> T G1(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(a3(str, obj));
    }

    public static X509Certificate[][] G2(FileChannel fileChannel, ku2 ku2Var) throws SecurityException, CertificateException {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer byteBufferR1 = R1(ku2Var.a);
                int i = 0;
                while (byteBufferR1.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(D2(R1(byteBufferR1), map, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Failed to parse/verify signer #");
                        sb.append(i);
                        sb.append(" block");
                        throw new SecurityException(sb.toString(), e);
                    }
                }
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                }
                if (map.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                long j = ku2Var.b;
                long j2 = ku2Var.c;
                long j3 = ku2Var.d;
                ByteBuffer byteBuffer = ku2Var.e;
                if (map.isEmpty()) {
                    throw new SecurityException("No digests provided");
                }
                vb3 vb3Var = new vb3(fileChannel, 0L, j);
                vb3 vb3Var2 = new vb3(fileChannel, j2, j3 - j2);
                ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                R3(byteBufferDuplicate);
                int iPosition = byteBufferDuplicate.position() + 16;
                if (j < 0 || j > 4294967295L) {
                    StringBuilder sb2 = new StringBuilder(47);
                    sb2.append("uint32 value of out range: ");
                    sb2.append(j);
                    throw new IllegalArgumentException(sb2.toString());
                }
                byteBufferDuplicate.putInt(byteBufferDuplicate.position() + iPosition, (int) j);
                g62 g62Var = new g62(byteBufferDuplicate);
                int size = map.size();
                int[] iArr = new int[size];
                Iterator it = map.keySet().iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    iArr[i2] = ((Integer) it.next()).intValue();
                    i2++;
                }
                try {
                    byte[][] bArrE2 = E2(iArr, new gg1[]{vb3Var, vb3Var2, g62Var});
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = iArr[i3];
                        if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i4)), bArrE2[i3])) {
                            throw new SecurityException(X2(i4).concat(" digest of contents did not verify"));
                        }
                    }
                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]);
                } catch (DigestException e2) {
                    throw new SecurityException("Failed to compute digest(s) of contents", e2);
                }
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
        }
    }

    public static int G3(byte[] bArr, int i, ow3 ow3Var) throws IOException {
        int iG1 = g1(bArr, i, ow3Var);
        int i2 = ow3Var.a;
        if (i2 == 0) {
            ow3Var.c = "";
            return iG1;
        }
        int i3 = iG1 + i2;
        if (!j04.e(bArr, iG1, i3)) {
            throw yx3.d();
        }
        ow3Var.c = new String(bArr, iG1, i2, ux3.a);
        return i3;
    }

    public static int G4(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(y3(i, i2, "index"));
        }
        return i;
    }

    public static int H(int i, int i2) {
        return d8.h(i, (Color.alpha(i) * i2) / Base64.BASELENGTH);
    }

    public static void H0(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof la5) {
            la5 la5Var = (la5) background;
            la5.b bVar = la5Var.e;
            if (bVar.o != f) {
                bVar.o = f;
                la5Var.E();
            }
        }
    }

    public static String H1(int i, int i2, String str) {
        if (i < 0) {
            return H2("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return H2("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(jo.M(26, "negative size: ", i2));
    }

    public static String H2(String str, Object... objArr) {
        int iIndexOf;
        String string;
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb = new StringBuilder(jo.x(hexString, name.length() + 1));
                    sb.append(name);
                    sb.append('@');
                    sb.append(hexString);
                    String string2 = sb.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(string2);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", strValueOf.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sbY = jo.y(name2.length() + jo.x(string2, 9), "<", string2, " threw ", name2);
                    sbY.append(">");
                    string = sbY.toString();
                }
            }
            objArr[i2] = string;
        }
        StringBuilder sb2 = new StringBuilder((objArr.length * 16) + str.length());
        int i3 = 0;
        while (i < objArr.length && (iIndexOf = str.indexOf("%s", i3)) != -1) {
            sb2.append((CharSequence) str, i3, iIndexOf);
            sb2.append(objArr[i]);
            i3 = iIndexOf + 2;
            i++;
        }
        sb2.append((CharSequence) str, i3, str.length());
        if (i < objArr.length) {
            sb2.append(" [");
            sb2.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb2.append(", ");
                sb2.append(objArr[i4]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    public static long H3(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static Set<sf1<sc1>> H4(yd1 yd1Var) {
        Set<sf1<sc1>> set = yd1Var.l;
        Objects.requireNonNull(set, "Cannot return null from a non-@Nullable @Provides method");
        return set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Animator I(w65 w65Var, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(w65Var, (Property<w65, V>) w65.c.a, (TypeEvaluator) w65.b.b, (Object[]) new w65.e[]{new w65.e(f, f2, f3)});
        w65.e revealInfo = w65Var.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) w65Var, (int) f, (int) f2, revealInfo.c, f3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    public static void I0(View view, la5 la5Var) {
        u75 u75Var = la5Var.e.b;
        if (u75Var != null && u75Var.a) {
            float fH0 = h0(view);
            la5.b bVar = la5Var.e;
            if (bVar.n != fH0) {
                bVar.n = fH0;
                la5Var.E();
            }
        }
    }

    public static String I1(Context context) {
        try {
            return context.getResources().getResourcePackageName(R$string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }

    public static final void I2(StringBuilder sb, int i, String str, Object obj) throws SecurityException {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                I2(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                I2(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sw3 sw3Var = sw3.f;
            sb.append(z3(new ww3(((String) obj).getBytes(ux3.a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof sw3) {
            sb.append(": \"");
            sb.append(z3((sw3) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof sx3) {
            sb.append(" {");
            h2((sx3) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i4 = i + 2;
        I2(sb, i4, "key", entry.getKey());
        I2(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
    }

    public static Object I3(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(jo.M(20, "at index ", i));
    }

    public static ha5 J(int i) {
        return i != 0 ? i != 1 ? new oa5() : new ia5() : new oa5();
    }

    public static int J0(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static String J1(x13 x13Var) throws NoSuchAlgorithmException {
        int i = nz2.a[x13Var.ordinal()];
        if (i == 1) {
            return "HmacSha1";
        }
        if (i == 2) {
            return "HmacSha256";
        }
        if (i == 3) {
            return "HmacSha512";
        }
        String strValueOf = String.valueOf(x13Var);
        throw new NoSuchAlgorithmException(jo.O(strValueOf.length() + 27, "hash unsupported for HMAC: ", strValueOf));
    }

    public static boolean J2(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static final String J3(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    public static iu5 K(String str) {
        List listEmptyList;
        int length = str.length();
        bx5.c(length >= 2, "Invalid path \"%s\"", str);
        if (length == 2) {
            bx5.c(str.charAt(0) == 1 && str.charAt(1) == 1, "Non-empty path \"%s\" had length 2", str);
            listEmptyList = Collections.emptyList();
        } else {
            int length2 = str.length() - 2;
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (i < length) {
                int iIndexOf = str.indexOf(1, i);
                if (iIndexOf < 0 || iIndexOf > length2) {
                    throw new IllegalArgumentException(jo.o("Invalid encoded resource path: \"", str, "\""));
                }
                int i2 = iIndexOf + 1;
                char cCharAt = str.charAt(i2);
                if (cCharAt == 1) {
                    String strSubstring = str.substring(i, iIndexOf);
                    if (sb.length() != 0) {
                        sb.append(strSubstring);
                        strSubstring = sb.toString();
                        sb.setLength(0);
                    }
                    arrayList.add(strSubstring);
                } else if (cCharAt == 16) {
                    sb.append(str.substring(i, iIndexOf));
                    sb.append((char) 0);
                } else {
                    if (cCharAt != 17) {
                        throw new IllegalArgumentException(jo.o("Invalid encoded resource path: \"", str, "\""));
                    }
                    sb.append(str.substring(i, i2));
                }
                i = iIndexOf + 2;
            }
            listEmptyList = arrayList;
        }
        return iu5.M(listEmptyList);
    }

    public static nd5 K0(Object obj) {
        return new nd5(obj.getClass().getSimpleName(), null);
    }

    public static String K1(g84 g84Var) {
        StringBuilder sb = new StringBuilder(g84Var.j());
        for (int i = 0; i < g84Var.j(); i++) {
            byte bD = g84Var.d(i);
            if (bD == 34) {
                sb.append("\\\"");
            } else if (bD == 39) {
                sb.append("\\'");
            } else if (bD != 92) {
                switch (bD) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bD < 32 || bD > 126) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((bD >>> 6) & 3) + 48));
                            sb.append((char) (((bD >>> 3) & 7) + 48));
                            sb.append((char) ((bD & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bD);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static final void K2(StringBuilder sb, int i, String str, Object obj) throws SecurityException {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                K2(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                K2(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            vj4 vj4Var = vj4.f;
            sb.append(L1(new ak4(((String) obj).getBytes(rk4.a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof vj4) {
            sb.append(": \"");
            sb.append(L1((vj4) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof pk4) {
            sb.append(" {");
            i2((pk4) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i4 = i + 2;
        K2(sb, i4, "key", entry.getKey());
        K2(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
    }

    public static final byte[] K3(byte[] bArr, byte[] bArr2) {
        if (bArr.length == bArr2.length) {
            return B2(bArr, 0, bArr2, 0, bArr.length);
        }
        throw new IllegalArgumentException("The lengths of x and y should match.");
    }

    public static void L(List<sf5<?>> list) {
        Set<gg5> set;
        HashMap map = new HashMap(list.size());
        Iterator<sf5<?>> it = list.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (gg5 gg5Var : (Set) it2.next()) {
                        for (ig5 ig5Var : gg5Var.a.b) {
                            if ((ig5Var.c == 0) && (set = (Set) map.get(new hg5(ig5Var.a, ig5Var.a(), null))) != null) {
                                for (gg5 gg5Var2 : set) {
                                    gg5Var.b.add(gg5Var2);
                                    gg5Var2.c.add(gg5Var);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                HashSet hashSet2 = new HashSet();
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    gg5 gg5Var3 = (gg5) it4.next();
                    if (gg5Var3.a()) {
                        hashSet2.add(gg5Var3);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    gg5 gg5Var4 = (gg5) hashSet2.iterator().next();
                    hashSet2.remove(gg5Var4);
                    i++;
                    for (gg5 gg5Var5 : gg5Var4.b) {
                        gg5Var5.c.remove(gg5Var4);
                        if (gg5Var5.a()) {
                            hashSet2.add(gg5Var5);
                        }
                    }
                }
                if (i == list.size()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator it5 = hashSet.iterator();
                while (it5.hasNext()) {
                    gg5 gg5Var6 = (gg5) it5.next();
                    if (!gg5Var6.a() && !gg5Var6.b.isEmpty()) {
                        arrayList.add(gg5Var6.a);
                    }
                }
                throw new jg5(arrayList);
            }
            sf5<?> next = it.next();
            gg5 gg5Var7 = new gg5(next);
            for (Class<? super Object> cls : next.a) {
                hg5 hg5Var = new hg5(cls, !next.b(), null);
                if (!map.containsKey(hg5Var)) {
                    map.put(hg5Var, new HashSet());
                }
                Set set2 = (Set) map.get(hg5Var);
                if (!set2.isEmpty() && !hg5Var.b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(gg5Var7);
            }
        }
    }

    public static PorterDuffColorFilter L0(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }

    public static String L1(vj4 vj4Var) {
        zm4 zm4Var = new zm4(vj4Var);
        StringBuilder sb = new StringBuilder(vj4Var.h());
        for (int i = 0; i < zm4Var.a.h(); i++) {
            byte bD = zm4Var.a.d(i);
            if (bD == 34) {
                sb.append("\\\"");
            } else if (bD == 39) {
                sb.append("\\'");
            } else if (bD != 92) {
                switch (bD) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bD < 32 || bD > 126) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((bD >>> 6) & 3) + 48));
                            sb.append((char) (((bD >>> 3) & 7) + 48));
                            sb.append((char) ((bD & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bD);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static ByteBuffer L2(ByteBuffer byteBuffer, int i) {
        if (i < 8) {
            StringBuilder sb = new StringBuilder(38);
            sb.append("end < start: ");
            sb.append(i);
            sb.append(" < 8");
            throw new IllegalArgumentException(sb.toString());
        }
        int iCapacity = byteBuffer.capacity();
        if (i > byteBuffer.capacity()) {
            throw new IllegalArgumentException(jo.N(41, "end > capacity: ", i, " > ", iCapacity));
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i);
            byteBuffer.position(8);
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            return byteBufferSlice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(iLimit);
            byteBuffer.position(iPosition);
        }
    }

    public static void L3(String str) {
        if (x60.a.a().booleanValue()) {
            is0.zzdz(str);
        }
    }

    public static float M(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    public static e45<Void> M0(Collection<? extends e45<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return X(null);
        }
        Iterator<? extends e45<?>> it = collection.iterator();
        while (it.hasNext()) {
            Objects.requireNonNull(it.next(), "null tasks are not accepted");
        }
        e55 e55Var = new e55();
        j45 j45Var = new j45(collection.size(), e55Var);
        Iterator<? extends e45<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            k2(it2.next(), j45Var);
        }
        return e55Var;
    }

    public static final String M1(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    public static String M2(k53 k53Var) {
        j93 j93Var = new j93(k53Var);
        StringBuilder sb = new StringBuilder(k53Var.size());
        for (int i = 0; i < j93Var.a.size(); i++) {
            byte bC = j93Var.a.C(i);
            if (bC == 34) {
                sb.append("\\\"");
            } else if (bC == 39) {
                sb.append("\\'");
            } else if (bC != 92) {
                switch (bC) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bC < 32 || bC > 126) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((bC >>> 6) & 3) + 48));
                            sb.append((char) (((bC >>> 3) & 7) + 48));
                            sb.append((char) ((bC & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bC);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static int M3(byte[] bArr, int i, g53 g53Var) throws e73 {
        int iE1 = e1(bArr, i, g53Var);
        int i2 = g53Var.a;
        if (i2 < 0) {
            throw e73.b();
        }
        if (i2 > bArr.length - iE1) {
            throw e73.a();
        }
        if (i2 == 0) {
            g53Var.c = k53.f;
            return iE1;
        }
        g53Var.c = k53.M(bArr, iE1, i2);
        return iE1 + i2;
    }

    public static float N(float f, float f2, float f3, float f4, float f5, float f6) {
        float fM = M(f, f2, f3, f4);
        float fM2 = M(f, f2, f5, f4);
        float fM3 = M(f, f2, f5, f6);
        float fM4 = M(f, f2, f3, f6);
        return (fM <= fM2 || fM <= fM3 || fM <= fM4) ? (fM2 <= fM3 || fM2 <= fM4) ? fM3 > fM4 ? fM3 : fM4 : fM2 : fM;
    }

    public static e45<List<e45<?>>> N0(e45<?>... e45VarArr) {
        if (e45VarArr.length == 0) {
            return X(Collections.emptyList());
        }
        List listAsList = Arrays.asList(e45VarArr);
        if (listAsList == null || listAsList.isEmpty()) {
            return X(Collections.emptyList());
        }
        e45<Void> e45VarM0 = M0(listAsList);
        return ((e55) e45VarM0).j(g45.a, new h55(listAsList));
    }

    public static String N1(String str, Object... objArr) {
        int iIndexOf;
        String string;
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb = new StringBuilder(jo.x(hexString, name.length() + 1));
                    sb.append(name);
                    sb.append('@');
                    sb.append(hexString);
                    String string2 = sb.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(string2);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", strValueOf.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sbY = jo.y(name2.length() + jo.x(string2, 9), "<", string2, " threw ", name2);
                    sbY.append(">");
                    string = sbY.toString();
                }
            }
            objArr[i2] = string;
        }
        StringBuilder sb2 = new StringBuilder((objArr.length * 16) + str.length());
        int i3 = 0;
        while (i < objArr.length && (iIndexOf = str.indexOf("%s", i3)) != -1) {
            sb2.append((CharSequence) str, i3, iIndexOf);
            sb2.append(objArr[i]);
            i3 = iIndexOf + 2;
            i++;
        }
        sb2.append((CharSequence) str, i3, str.length());
        if (i < objArr.length) {
            sb2.append(" [");
            sb2.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb2.append(", ");
                sb2.append(objArr[i4]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    public static int N2(int i, byte[] bArr, int i2, w74 w74Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            w74Var.a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            w74Var.a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            w74Var.a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            w74Var.a = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                w74Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int N3(byte[] bArr, int i, ow3 ow3Var) {
        int iG1 = g1(bArr, i, ow3Var);
        int i2 = ow3Var.a;
        if (i2 == 0) {
            ow3Var.c = sw3.f;
            return iG1;
        }
        ow3Var.c = sw3.n(bArr, iG1, i2);
        return iG1 + i2;
    }

    public static void O(View view, z85 z85Var) {
        AtomicInteger atomicInteger = ha.a;
        ha.t(view, new x85(z85Var, new a95(view.getPaddingStart(), view.getPaddingTop(), view.getPaddingEnd(), view.getPaddingBottom())));
        if (view.isAttachedToWindow()) {
            view.requestApplyInsets();
        } else {
            view.addOnAttachStateChangeListener(new y85());
        }
    }

    public static int O0(int i) {
        if (i == 513) {
            return 1;
        }
        if (i == 514) {
            return 2;
        }
        if (i == 769) {
            return 1;
        }
        switch (i) {
            case 257:
            case 259:
                return 1;
            case 258:
            case 260:
                return 2;
            default:
                String strValueOf = String.valueOf(Long.toHexString(i));
                throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(strValueOf) : new String("Unknown signature algorithm: 0x"));
        }
    }

    public static String O1(JSONObject jSONObject, String str, String str2) {
        JSONArray jSONArrayOptJSONArray;
        if (!((Boolean) os3.j.f.a(y40.Y0)).booleanValue() || jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray(str2)) == null) {
            return "";
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("including");
                JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray("excluding");
                if (z2(jSONArrayOptJSONArray2, str) && !z2(jSONArrayOptJSONArray3, str)) {
                    return jSONObjectOptJSONObject.optString("effective_ad_unit_id", "");
                }
            }
        }
        return "";
    }

    public static int O2(byte[] bArr, int i, g53 g53Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            g53Var.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b2 = bArr[i3];
            i3 = i5;
        }
        g53Var.b = j2;
        return i3;
    }

    public static long O3(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static float P(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static int P0(int i, int i2) {
        String strH2;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strH2 = H2("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new IllegalArgumentException(jo.M(26, "negative size: ", i2));
            }
            strH2 = H2("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strH2);
    }

    public static String P1(byte[] bArr, boolean z) {
        return android.util.Base64.encodeToString(bArr, z ? 11 : 2);
    }

    public static int P2(byte[] bArr, int i, ow3 ow3Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            ow3Var.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b2 = bArr[i3];
            i3 = i5;
        }
        ow3Var.b = j2;
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0018 A[PHI: r2
      0x0018: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0012, B:11:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void P3(byte r2, byte r3, byte r4, char[] r5, int r6) throws defpackage.l94 {
        /*
            boolean r0 = f4(r3)
            if (r0 != 0) goto L2e
            r0 = -96
            r1 = -32
            if (r2 != r1) goto L10
            if (r3 < r0) goto L2e
            r2 = -32
        L10:
            r1 = -19
            if (r2 != r1) goto L18
            if (r3 >= r0) goto L2e
            r2 = -19
        L18:
            boolean r0 = f4(r4)
            if (r0 != 0) goto L2e
            r2 = r2 & 15
            int r2 = r2 << 12
            r3 = r3 & 63
            int r3 = r3 << 6
            r2 = r2 | r3
            r3 = r4 & 63
            r2 = r2 | r3
            char r2 = (char) r2
            r5[r6] = r2
            return
        L2e:
            l94 r2 = defpackage.l94.d()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.P3(byte, byte, byte, char[], int):void");
    }

    public static <B extends vt5<B>> String Q(B b2) {
        StringBuilder sb = new StringBuilder();
        int I = b2.I();
        for (int i = 0; i < I; i++) {
            if (sb.length() > 0) {
                sb.append((char) 1);
                sb.append((char) 1);
            }
            String strY = b2.y(i);
            int length = strY.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = strY.charAt(i2);
                if (cCharAt == 0) {
                    sb.append((char) 1);
                    sb.append((char) 16);
                } else if (cCharAt != 1) {
                    sb.append(cCharAt);
                } else {
                    sb.append((char) 1);
                    sb.append((char) 17);
                }
            }
        }
        sb.append((char) 1);
        sb.append((char) 1);
        return sb.toString();
    }

    public static int Q0(int i, byte[] bArr, int i2, int i3, g53 g53Var) throws e73 {
        if ((i >>> 3) == 0) {
            throw e73.d();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return O2(bArr, i2, g53Var);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return e1(bArr, i2, g53Var) + g53Var.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw e73.d();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = e1(bArr, i2, g53Var);
            i6 = g53Var.a;
            if (i6 == i5) {
                break;
            }
            i2 = Q0(i6, bArr, i2, i3, g53Var);
        }
        if (i2 > i3 || i6 != i5) {
            throw e73.g();
        }
        return i2;
    }

    public static BigInteger Q1(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        ECField field = ellipticCurve.getField();
        if (field instanceof ECFieldFp) {
            return ((ECFieldFp) field).getP();
        }
        throw new GeneralSecurityException("Only curves over prime order fields are supported");
    }

    public static long Q2(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorW3 = w3(sQLiteDatabase, 2);
        long j = 0;
        if (cursorW3.getCount() > 0) {
            cursorW3.moveToNext();
            j = 0 + cursorW3.getLong(cursorW3.getColumnIndexOrThrow("value"));
        }
        cursorW3.close();
        return j;
    }

    public static void Q3(Context context, boolean z) {
        if (z) {
            is0.zzey("This request is sent from a test device.");
            return;
        }
        zr0 zr0Var = os3.j.a;
        String strH = zr0.h(context);
        StringBuilder sb = new StringBuilder(String.valueOf(strH).length() + 102);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(strH);
        sb.append("\")) to get test ads on this device.");
        is0.zzey(sb.toString());
    }

    public static void R() {
        if (el3.a >= 18) {
            Trace.endSection();
        }
    }

    public static int R0(int i, byte[] bArr, int i2, int i3, b73<?> b73Var, g53 g53Var) {
        v63 v63Var = (v63) b73Var;
        int iE1 = e1(bArr, i2, g53Var);
        v63Var.o(g53Var.a);
        while (iE1 < i3) {
            int iE12 = e1(bArr, iE1, g53Var);
            if (i != g53Var.a) {
                break;
            }
            iE1 = e1(bArr, iE12, g53Var);
            v63Var.o(g53Var.a);
        }
        return iE1;
    }

    public static ByteBuffer R1(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() < 4) {
            throw new IOException(jo.M(93, "Remaining buffer too short to contain length of length-prefixed field. Remaining: ", byteBuffer.remaining()));
        }
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            return S1(byteBuffer, i);
        }
        throw new IOException(jo.N(101, "Length-prefixed field longer than remaining buffer. Field length: ", i, ", remaining: ", byteBuffer.remaining()));
    }

    public static long R2(byte[] bArr, int i) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, 8);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getLong();
    }

    public static void R3(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static boolean S(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int S0(int i, byte[] bArr, int i2, int i3, o93 o93Var, g53 g53Var) throws e73 {
        if ((i >>> 3) == 0) {
            throw e73.d();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iO2 = O2(bArr, i2, g53Var);
            o93Var.e(i, Long.valueOf(g53Var.b));
            return iO2;
        }
        if (i4 == 1) {
            o93Var.e(i, Long.valueOf(q4(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iE1 = e1(bArr, i2, g53Var);
            int i5 = g53Var.a;
            if (i5 < 0) {
                throw e73.b();
            }
            if (i5 > bArr.length - iE1) {
                throw e73.a();
            }
            if (i5 == 0) {
                o93Var.e(i, k53.f);
            } else {
                o93Var.e(i, k53.M(bArr, iE1, i5));
            }
            return iE1 + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw e73.d();
            }
            o93Var.e(i, Integer.valueOf(h4(bArr, i2)));
            return i2 + 4;
        }
        o93 o93VarD = o93.d();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iE12 = e1(bArr, i2, g53Var);
            int i8 = g53Var.a;
            if (i8 == i6) {
                i7 = i8;
                i2 = iE12;
                break;
            }
            i7 = i8;
            i2 = S0(i8, bArr, iE12, i3, o93VarD, g53Var);
        }
        if (i2 > i3 || i7 != i6) {
            throw e73.g();
        }
        o93Var.e(i, o93VarD);
        return i2;
    }

    public static ByteBuffer S1(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
        if (i < 0) {
            throw new IllegalArgumentException(jo.M(17, "size: ", i));
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        int i2 = i + iPosition;
        if (i2 < iPosition || i2 > iLimit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i2);
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            byteBuffer.position(i2);
            return byteBufferSlice;
        } finally {
            byteBuffer.limit(iLimit);
        }
    }

    public static m50 S2(o50 o50Var) {
        if (o50Var == null) {
            return null;
        }
        long jB = zzr.zzlc().b();
        if (o50Var.a) {
            return new m50(jB, null, null);
        }
        return null;
    }

    public static boolean S3(File file) {
        boolean z;
        if (!file.exists()) {
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            int length = fileArrListFiles.length;
            z = true;
            for (int i = 0; i < length; i++) {
                File file2 = fileArrListFiles[i];
                z = file2 != null && S3(file2) && z;
            }
        } else {
            z = true;
        }
        return file.delete() && z;
    }

    public static boolean T(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int T0(int i, byte[] bArr, int i2, int i3, ow3 ow3Var) throws yx3 {
        if ((i >>> 3) == 0) {
            throw yx3.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return P2(bArr, i2, ow3Var);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return g1(bArr, i2, ow3Var) + ow3Var.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw yx3.b();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = g1(bArr, i2, ow3Var);
            i6 = ow3Var.a;
            if (i6 == i5) {
                break;
            }
            i2 = T0(i6, bArr, i2, i3, ow3Var);
        }
        if (i2 > i3 || i6 != i5) {
            throw yx3.c();
        }
        return i2;
    }

    public static ECParameterSpec T1(v33 v33Var) throws NoSuchAlgorithmException {
        int i = w33.b[v33Var.ordinal()];
        if (i == 1) {
            return U1("115792089210356248762697446949407573530086143415290314195533631308867097853951", "115792089210356248762697446949407573529996955224135760342422259061068512044369", "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5");
        }
        if (i == 2) {
            return U1("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319", "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643", "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef", "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f");
        }
        if (i == 3) {
            return U1("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151", "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449", "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00", "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650");
        }
        String strValueOf = String.valueOf(v33Var);
        throw new NoSuchAlgorithmException(jo.O(strValueOf.length() + 22, "curve not implemented:", strValueOf));
    }

    public static wh1 T2(rg1 rg1Var) {
        wh1 wh1Var = rg1Var.a;
        Objects.requireNonNull(wh1Var, "Cannot return null from a non-@Nullable @Provides method");
        return wh1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] T3(java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.T3(java.lang.String, boolean):java.lang.String[]");
    }

    public static boolean U(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int U0(int i, byte[] bArr, int i2, int i3, xx3<?> xx3Var, ow3 ow3Var) {
        tx3 tx3Var = (tx3) xx3Var;
        int iG1 = g1(bArr, i2, ow3Var);
        while (true) {
            tx3Var.n(tx3Var.g, ow3Var.a);
            if (iG1 >= i3) {
                break;
            }
            int iG12 = g1(bArr, iG1, ow3Var);
            if (i != ow3Var.a) {
                break;
            }
            iG1 = g1(bArr, iG12, ow3Var);
        }
        return iG1;
    }

    public static ECParameterSpec U1(String str, String str2, String str3, String str4, String str5) {
        BigInteger bigInteger = new BigInteger(str);
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigInteger), bigInteger.subtract(new BigInteger("3")), new BigInteger(str3, 16)), new ECPoint(new BigInteger(str4, 16), new BigInteger(str5, 16)), new BigInteger(str2), 1);
    }

    public static ui3 U2(pu3 pu3Var) throws NumberFormatException {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = pu3Var.c;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        long jD4 = str != null ? d4(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            int i2 = 0;
            j = 0;
            j2 = 0;
            while (i < strArrSplit.length) {
                String strTrim = strArrSplit[i].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    i2 = 1;
                }
                i++;
            }
            i = i2;
            z = true;
        } else {
            z = false;
            j = 0;
            j2 = 0;
        }
        String str3 = map.get("Expires");
        long jD42 = str3 != null ? d4(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long jD43 = str4 != null ? d4(str4) : 0L;
        String str5 = map.get("ETag");
        if (z) {
            j4 = jCurrentTimeMillis + (j * 1000);
            if (i != 0) {
                j5 = j4;
            } else {
                Long.signum(j2);
                j5 = (j2 * 1000) + j4;
            }
            j3 = j5;
        } else {
            j3 = 0;
            if (jD4 <= 0 || jD42 < jD4) {
                j4 = 0;
            } else {
                j4 = jCurrentTimeMillis + (jD42 - jD4);
                j3 = j4;
            }
        }
        ui3 ui3Var = new ui3();
        ui3Var.a = pu3Var.b;
        ui3Var.b = str5;
        ui3Var.f = j4;
        ui3Var.e = j3;
        ui3Var.c = jD4;
        ui3Var.d = jD43;
        ui3Var.g = map;
        ui3Var.h = pu3Var.d;
        return ui3Var;
    }

    public static int U3(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static int V(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        if (d > d2) {
            return 1;
        }
        if (d == d2) {
            return 0;
        }
        if (Double.isNaN(d2)) {
            return !Double.isNaN(d) ? 1 : 0;
        }
        return -1;
    }

    public static int V0(int i, byte[] bArr, int i2, int i3, c04 c04Var, ow3 ow3Var) throws IOException {
        if ((i >>> 3) == 0) {
            throw yx3.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iP2 = P2(bArr, i2, ow3Var);
            c04Var.b(i, Long.valueOf(ow3Var.b));
            return iP2;
        }
        if (i4 == 1) {
            c04Var.b(i, Long.valueOf(H3(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iG1 = g1(bArr, i2, ow3Var);
            int i5 = ow3Var.a;
            c04Var.b(i, i5 == 0 ? sw3.f : sw3.n(bArr, iG1, i5));
            return iG1 + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw yx3.b();
            }
            c04Var.b(i, Integer.valueOf(s3(bArr, i2)));
            return i2 + 4;
        }
        c04 c04VarE = c04.e();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iG12 = g1(bArr, i2, ow3Var);
            int i8 = ow3Var.a;
            i7 = i8;
            if (i8 == i6) {
                i2 = iG12;
                break;
            }
            int iV0 = V0(i7, bArr, iG12, i3, c04VarE, ow3Var);
            i7 = i8;
            i2 = iV0;
        }
        if (i2 > i3 || i7 != i6) {
            throw yx3.c();
        }
        c04Var.b(i, c04VarE);
        return i2;
    }

    public static ArrayList<eq3.a> V1(SQLiteDatabase sQLiteDatabase) {
        ArrayList<eq3.a> arrayList = new ArrayList<>();
        Cursor cursorQuery = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(eq3.a.L(cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (e73 e) {
                is0.zzex("Unable to deserialize proto from offline signals database:");
                is0.zzex(e.getMessage());
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    public static zzvt V2(Context context, List<uk2> list) {
        ArrayList arrayList = new ArrayList();
        for (uk2 uk2Var : list) {
            if (uk2Var.c) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(uk2Var.a, uk2Var.b));
            }
        }
        return new zzvt(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static int V3(byte[] bArr, int i, w74 w74Var) throws l94 {
        int iI1 = i1(bArr, i, w74Var);
        int i2 = w74Var.a;
        if (i2 < 0) {
            throw l94.b();
        }
        if (i2 == 0) {
            w74Var.c = "";
            return iI1;
        }
        w74Var.c = new String(bArr, iI1, i2, j94.a);
        return iI1 + i2;
    }

    public static <TResult> e45<TResult> W(Exception exc) {
        e55 e55Var = new e55();
        e55Var.r(exc);
        return e55Var;
    }

    public static int W0(int i, byte[] bArr, int i2, g53 g53Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            g53Var.a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            g53Var.a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            g53Var.a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            g53Var.a = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                g53Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static void W1(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? H1(i, i3, "start index") : (i2 < 0 || i2 > i3) ? H1(i2, i3, "end index") : H2("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static <T> T W2(Bundle bundle, String str, Class<T> cls, T t) {
        T t2 = (T) bundle.get(str);
        if (t2 == null) {
            return t;
        }
        if (cls.isAssignableFrom(t2.getClass())) {
            return t2;
        }
        throw new IllegalStateException(String.format("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", str, cls.getCanonicalName(), t2.getClass().getCanonicalName()));
    }

    public static long W3(ByteBuffer byteBuffer) {
        long j = byteBuffer.getInt();
        return j < 0 ? j + 4294967296L : j;
    }

    public static <TResult> e45<TResult> X(TResult tresult) {
        e55 e55Var = new e55();
        e55Var.s(tresult);
        return e55Var;
    }

    public static int X0(int i, byte[] bArr, int i2, ow3 ow3Var) {
        int i3;
        int i4;
        int i5 = i & 127;
        int i6 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 7);
            int i8 = i6 + 1;
            byte b3 = bArr[i6];
            if (b3 >= 0) {
                i3 = b3 << 14;
            } else {
                i5 = i7 | ((b3 & Byte.MAX_VALUE) << 14);
                i6 = i8 + 1;
                byte b4 = bArr[i8];
                if (b4 >= 0) {
                    i4 = b4 << 21;
                } else {
                    i7 = i5 | ((b4 & Byte.MAX_VALUE) << 21);
                    i8 = i6 + 1;
                    byte b5 = bArr[i6];
                    if (b5 >= 0) {
                        i3 = b5 << 28;
                    } else {
                        int i9 = i7 | ((b5 & Byte.MAX_VALUE) << 28);
                        while (true) {
                            int i10 = i8 + 1;
                            if (bArr[i8] >= 0) {
                                ow3Var.a = i9;
                                return i10;
                            }
                            i8 = i10;
                        }
                    }
                }
            }
            ow3Var.a = i7 | i3;
            return i8;
        }
        i4 = b2 << 7;
        ow3Var.a = i5 | i4;
        return i6;
    }

    public static void X1(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        is0.zzey(sb.toString());
        zzd.zza(str, th);
        if (i == 3) {
            return;
        }
        zzr.zzkz().c(th, str);
    }

    public static String X2(int i) {
        if (i == 1) {
            return "SHA-256";
        }
        if (i == 2) {
            return "SHA-512";
        }
        throw new IllegalArgumentException(jo.M(44, "Unknown content digest algorthm: ", i));
    }

    public static /* synthetic */ void X3(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) throws l94 {
        if (!f4(b3)) {
            if ((((b3 + 112) + (b2 << 28)) >> 30) == 0 && !f4(b4) && !f4(b5)) {
                int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
                cArr[i] = (char) ((i2 >>> 10) + 55232);
                cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                return;
            }
        }
        throw l94.d();
    }

    public static int Y(Context context, int i, int i2) {
        TypedValue typedValueE0 = E0(context, i);
        return typedValueE0 != null ? typedValueE0.data : i2;
    }

    public static int Y0(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor cursorW3 = w3(sQLiteDatabase, i);
        if (cursorW3.getCount() > 0) {
            cursorW3.moveToNext();
            i2 = 0 + cursorW3.getInt(cursorW3.getColumnIndexOrThrow("value"));
        }
        cursorW3.close();
        return i2;
    }

    public static void Y1(int i, byte[] bArr) {
        bArr[1] = (byte) i;
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 16);
        bArr[4] = (byte) (i >>> 24);
    }

    public static String Y2(String str, Context context) {
        String strJ = zzr.zzlt().j(context);
        String strK = zzr.zzlt().k(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(strJ)) {
            str = l1(str, "gmp_app_id", strJ).toString();
        }
        return (str.contains("fbs_aiid") || TextUtils.isEmpty(strK)) ? str : l1(str, "fbs_aiid", strK).toString();
    }

    public static void Y3(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? y3(i, i3, "start index") : (i2 < 0 || i2 > i3) ? y3(i2, i3, "end index") : a3("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static int Z(View view, int i) {
        return G0(view.getContext(), i, view.getClass().getCanonicalName());
    }

    public static int Z0(AdRequest.ErrorCode errorCode) {
        int i = hi0.b[errorCode.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    public static void Z1(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    public static final String Z2(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier != 0) {
            try {
                return resources.getString(identifier);
            } catch (Resources.NotFoundException unused) {
            }
        }
        return null;
    }

    public static Date Z3(long j) {
        return new Date((j - 2082844800) * 1000);
    }

    public static <T> T a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static ColorStateList a0(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListA = p0.a(context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateListA;
    }

    public static int a1(w83<?> w83Var, int i, byte[] bArr, int i2, int i3, b73<?> b73Var, g53 g53Var) throws IOException {
        int iC1 = c1(w83Var, bArr, i2, i3, g53Var);
        b73Var.add(g53Var.c);
        while (iC1 < i3) {
            int iE1 = e1(bArr, iC1, g53Var);
            if (i != g53Var.a) {
                break;
            }
            iC1 = c1(w83Var, bArr, iE1, i3, g53Var);
            b73Var.add(g53Var.c);
        }
        return iC1;
    }

    public static void a2(Bundle bundle, String str, Boolean bool, boolean z) {
        if (z) {
            bundle.putBoolean(str, bool.booleanValue());
        }
    }

    public static String a3(String str, Object... objArr) {
        int iIndexOf;
        String string;
        String strValueOf = String.valueOf(str);
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb = new StringBuilder(jo.x(hexString, name.length() + 1));
                    sb.append(name);
                    sb.append('@');
                    sb.append(hexString);
                    String string2 = sb.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf2 = String.valueOf(string2);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", strValueOf2.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf2) : new String("Exception during lenientFormat for "), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sbY = jo.y(name2.length() + jo.x(string2, 9), "<", string2, " threw ", name2);
                    sbY.append(">");
                    string = sbY.toString();
                }
            }
            objArr[i2] = string;
        }
        StringBuilder sb2 = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i3 = 0;
        while (i < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i3)) != -1) {
            sb2.append((CharSequence) strValueOf, i3, iIndexOf);
            sb2.append(objArr[i]);
            i3 = iIndexOf + 2;
            i++;
        }
        sb2.append((CharSequence) strValueOf, i3, strValueOf.length());
        if (i < objArr.length) {
            sb2.append(" [");
            sb2.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb2.append(", ");
                sb2.append(objArr[i4]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    public static int a4(ByteBuffer byteBuffer) {
        int i = byteBuffer.get();
        if (i < 0) {
            i += RecyclerView.a0.FLAG_TMP_DETACHED;
        }
        int i2 = (i << 8) + 0;
        int i3 = byteBuffer.get();
        if (i3 < 0) {
            i3 += RecyclerView.a0.FLAG_TMP_DETACHED;
        }
        return i2 + i3;
    }

    public static String b(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    public static ColorStateList b0(Context context, c3 c3Var, int i) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!c3Var.b.hasValue(i) || (resourceId = c3Var.b.getResourceId(i, 0)) == 0 || (colorStateListA = p0.a(context, resourceId)) == null) ? c3Var.c(i) : colorStateListA;
    }

    public static int b1(w83 w83Var, byte[] bArr, int i, int i2, int i3, g53 g53Var) throws IOException {
        g83 g83Var = (g83) w83Var;
        Object objC = g83Var.c();
        int iN = g83Var.n(objC, bArr, i, i2, i3, g53Var);
        g83Var.j(objC);
        g53Var.c = objC;
        return iN;
    }

    public static void b2(Bundle bundle, String str, Integer num, boolean z) {
        if (z) {
            bundle.putInt(str, num.intValue());
        }
    }

    public static Set b3(jt1 jt1Var, Executor executor) {
        Set setA = at1.a(jt1Var, executor);
        Objects.requireNonNull(setA, "Cannot return null from a non-@Nullable @Provides method");
        return setA;
    }

    public static int b4(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static void c(Map<String, String> map, String str) {
        if ("af".equals(str)) {
            map.put("error_initializing_player", "Kon nie die YouTube-speler inisialiseer nie.");
            map.put("get_youtube_app_title", "Kry YouTube-program");
            map.put("get_youtube_app_text", "Hierdie program sal nie loop sonder die YouTube-program, wat ontbreek van jou toestel, nie");
            map.put("get_youtube_app_action", "Kry YouTube-program");
            map.put("enable_youtube_app_title", "Aktiveer YouTube-program");
            map.put("enable_youtube_app_text", "Hierdie program sal nie werk tensy jy die YouTube-program aktiveer nie.");
            map.put("enable_youtube_app_action", "Aktiveer YouTube-program");
            map.put("update_youtube_app_title", "Dateer YouTube-program op");
            map.put("update_youtube_app_text", "Hierdie program sal nie werk tensy jy die YouTube-program opdateer nie.");
            map.put("update_youtube_app_action", "Dateer YouTube-program op");
            return;
        }
        if ("am".equals(str)) {
            map.put("error_initializing_player", "የYouTube አጫዋቹን በማስጀመር ላይ ሳለ አንድ ስህተት ተከስቷል።");
            map.put("get_youtube_app_title", "የYouTube መተግበሪያውን ያግኙ");
            map.put("get_youtube_app_text", "ይህ መተግበሪያ ያለ YouTube መተግበሪያው አይሂድም፣ እሱ ደግሞ በመሣሪያዎ ላይ የለም።");
            map.put("get_youtube_app_action", "የYouTube መተግበሪያውን ያግኙ");
            map.put("enable_youtube_app_title", "የYouTube መተግበሪያውን ያንቁ");
            map.put("enable_youtube_app_text", "የYouTube መተግበሪያውን እስካላነቁ ድረስ ይህ መተግበሪያ አይሰራም።");
            map.put("enable_youtube_app_action", "የYouTube መተግበሪያውን ያንቁ");
            map.put("update_youtube_app_title", "የYouTube መተግበሪያውን ያዘምኑ");
            map.put("update_youtube_app_text", "የYouTube መተግበሪያውን እስካላዘመኑት ድረስ ይህ መተግበሪያ አይሰራም።");
            map.put("update_youtube_app_action", "የYouTube መተግበሪያውን ያዘምኑ");
            return;
        }
        if ("ar".equals(str)) {
            map.put("error_initializing_player", "حدث خطأ أثناء تهيئة مشغل YouTube.");
            map.put("get_youtube_app_title", "الحصول على تطبيق YouTube");
            map.put("get_youtube_app_text", "لن يعمل هذا التطبيق بدون تطبيق YouTube الذي لا يتوفر على جهازك");
            map.put("get_youtube_app_action", "الحصول على تطبيق YouTube");
            map.put("enable_youtube_app_title", "تمكين تطبيق YouTube");
            map.put("enable_youtube_app_text", "لن يعمل هذا التطبيق ما لم يتم تمكين تطبيق YouTube.");
            map.put("enable_youtube_app_action", "تمكين تطبيق YouTube");
            map.put("update_youtube_app_title", "تحديث تطبيق YouTube");
            map.put("update_youtube_app_text", "لن يعمل هذا التطبيق ما لم يتم تحديث تطبيق YouTube.");
            map.put("update_youtube_app_action", "تحديث تطبيق YouTube");
            return;
        }
        if ("be".equals(str)) {
            map.put("error_initializing_player", "Памылка падчас ініцыялізацыі прайгравальнiка YouTube.");
            map.put("get_youtube_app_title", "Спампаваць прыкладанне YouTube");
            map.put("get_youtube_app_text", "Гэта прыкладанне не будзе працаваць без прыкладання YouTube, якое адсутнічае на прыладзе");
            map.put("get_youtube_app_action", "Спампаваць прыкладанне YouTube");
            map.put("enable_youtube_app_title", "Уключыць прыкладанне YouTube");
            map.put("enable_youtube_app_text", "Гэта прыкладанне не будзе працаваць, пакуль вы не ўключыце прыкладанне YouTube.");
            map.put("enable_youtube_app_action", "Уключыць прыкладанне YouTube");
            map.put("update_youtube_app_title", "Абнавiць прыкладанне YouTube");
            map.put("update_youtube_app_text", "Гэта прыкладанне не будзе працаваць, пакуль вы не абнавiце прыкладанне YouTube.");
            map.put("update_youtube_app_action", "Абнавiць прыкладанне YouTube");
            return;
        }
        if ("bg".equals(str)) {
            map.put("error_initializing_player", "При подготвянето на плейъра на YouTube за работа възникна грешка.");
            map.put("get_youtube_app_title", "Изтегл. на прил. YouTube");
            map.put("get_youtube_app_text", "Това приложение няма да работи без приложението YouTube, което липсва на устройството ви");
            map.put("get_youtube_app_action", "Изтегл. на прил. YouTube");
            map.put("enable_youtube_app_title", "Акт. на прил. YouTube");
            map.put("enable_youtube_app_text", "Това приложение няма да работи, освен ако не активирате приложението YouTube.");
            map.put("enable_youtube_app_action", "Акт. на прил. YouTube");
            map.put("update_youtube_app_title", "Актул. на прил. YouTube");
            map.put("update_youtube_app_text", "Това приложение няма да работи, освен ако не актуализирате приложението YouTube.");
            map.put("update_youtube_app_action", "Актул. на прил. YouTube");
            return;
        }
        if ("ca".equals(str)) {
            map.put("error_initializing_player", "S'ha produït un error en iniciar el reproductor de YouTube.");
            map.put("get_youtube_app_title", "Obtenció aplicac. YouTube");
            map.put("get_youtube_app_text", "Aquesta aplicació no funcionarà sense l'aplicació de YouTube, que encara no és al dispositiu.");
            map.put("get_youtube_app_action", "Obtén l'aplic. de YouTube");
            map.put("enable_youtube_app_title", "Activació aplic. YouTube");
            map.put("enable_youtube_app_text", "Aquesta aplicació no funcionarà fins que no activis l'aplicació de YouTube.");
            map.put("enable_youtube_app_action", "Activa aplicació YouTube");
            map.put("update_youtube_app_title", "Actualitz. aplic. YouTube");
            map.put("update_youtube_app_text", "Aquesta aplicació no funcionarà fins que no actualitzis l'aplicació de YouTube.");
            map.put("update_youtube_app_action", "Actualitza aplic. YouTube");
            return;
        }
        if ("cs".equals(str)) {
            map.put("error_initializing_player", "Při inicializaci přehrávače YouTube došlo k chybě.");
            map.put("get_youtube_app_title", "Stáhněte aplikaci YouTube");
            map.put("get_youtube_app_text", "Tuto aplikaci nelze spustit bez aplikace YouTube, kterou v zařízení nemáte nainstalovanou");
            map.put("get_youtube_app_action", "Stáhnout aplikaci YouTube");
            map.put("enable_youtube_app_title", "Aktivujte aplik. YouTube");
            map.put("enable_youtube_app_text", "Ke spuštění této aplikace je třeba aktivovat aplikaci YouTube.");
            map.put("enable_youtube_app_action", "Zapnout aplikaci YouTube");
            map.put("update_youtube_app_title", "Aktualizujte apl. YouTube");
            map.put("update_youtube_app_text", "Ke spuštění této aplikace je třeba aktualizovat aplikaci YouTube.");
            map.put("update_youtube_app_action", "Aktualizovat apl. YouTube");
            return;
        }
        if ("da".equals(str)) {
            map.put("error_initializing_player", "Der opstod en fejl under initialisering af YouTube-afspilleren.");
            map.put("get_youtube_app_title", "Få YouTube-appen");
            map.put("get_youtube_app_text", "Denne app kan ikke køre uden YouTube-appen, som ikke findes på din enhed");
            map.put("get_youtube_app_action", "Få YouTube-appen");
            map.put("enable_youtube_app_title", "Aktivér YouTube-appen");
            map.put("enable_youtube_app_text", "Denne app fungerer ikke, medmindre du aktiverer YouTube-appen.");
            map.put("enable_youtube_app_action", "Aktivér YouTube-appen");
            map.put("update_youtube_app_title", "Opdater YouTube-appen");
            map.put("update_youtube_app_text", "Denne app fungerer ikke, hvis du ikke opdaterer YouTube-appen.");
            map.put("update_youtube_app_action", "Opdater YouTube-appen");
            return;
        }
        if ("de".equals(str)) {
            map.put("error_initializing_player", "Bei der Initialisierung des YouTube-Players ist ein Fehler aufgetreten.");
            map.put("get_youtube_app_title", "YouTube App herunterladen");
            map.put("get_youtube_app_text", "Diese App kann nur ausgeführt werden, wenn die YouTube App bereitgestellt ist. Diese ist auf deinem Gerät nicht vorhanden.");
            map.put("get_youtube_app_action", "YouTube App herunterladen");
            map.put("enable_youtube_app_title", "YouTube App aktivieren");
            map.put("enable_youtube_app_text", "Diese App funktioniert nur, wenn die YouTube App aktiviert wird.");
            map.put("enable_youtube_app_action", "YouTube App aktivieren");
            map.put("update_youtube_app_title", "YouTube App aktualisieren");
            map.put("update_youtube_app_text", "Diese App funktioniert nur, wenn die YouTube App aktualisiert wird.");
            map.put("update_youtube_app_action", "YouTube App aktualisieren");
            return;
        }
        if ("el".equals(str)) {
            map.put("error_initializing_player", "Παρουσιάστηκε σφάλμα κατά την προετοιμασία του προγράμματος αναπαραγωγής του YouTube.");
            map.put("get_youtube_app_title", "Λήψη YouTube");
            map.put("get_youtube_app_text", "Δεν είναι δυνατή η εκτέλεση αυτής της εφαρμογής χωρίς την εφαρμογή YouTube, η οποία απουσιάζει από τη συσκευή σας");
            map.put("get_youtube_app_action", "Λήψη YouTube");
            map.put("enable_youtube_app_title", "Ενεργοποίηση YouTube");
            map.put("enable_youtube_app_text", "Δεν είναι δυνατή η λειτουργία αυτής της εφαρμογής εάν δεν ενεργοποιήσετε την εφαρμογή YouTube.");
            map.put("enable_youtube_app_action", "Ενεργοποίηση YouTube");
            map.put("update_youtube_app_title", "Ενημέρωση YouTube");
            map.put("update_youtube_app_text", "Δεν είναι δυνατή η λειτουργία αυτής της εφαρμογής εάν δεν ενημερώσετε την εφαρμογή YouTube.");
            map.put("update_youtube_app_action", "Ενημέρωση YouTube");
            return;
        }
        if ("en_GB".equals(str)) {
            map.put("error_initializing_player", "An error occurred while initialising the YouTube player.");
            map.put("get_youtube_app_title", "Get YouTube App");
            map.put("get_youtube_app_text", "This app won't run without the YouTube App, which is missing from your device");
            map.put("get_youtube_app_action", "Get YouTube App");
            map.put("enable_youtube_app_title", "Enable YouTube App");
            map.put("enable_youtube_app_text", "This app won't work unless you enable the YouTube App.");
            map.put("enable_youtube_app_action", "Enable YouTube App");
            map.put("update_youtube_app_title", "Update YouTube App");
            map.put("update_youtube_app_text", "This app won't work unless you update the YouTube App.");
            map.put("update_youtube_app_action", "Update YouTube App");
            return;
        }
        if ("es_US".equals(str)) {
            map.put("error_initializing_player", "Se produjo un error al iniciar el reproductor de YouTube.");
            map.put("get_youtube_app_title", "Obtener YouTube");
            map.put("get_youtube_app_text", "Esta aplicación no se ejecutará sin la aplicación YouTube, la cual no se instaló en tu dispositivo.");
            map.put("get_youtube_app_action", "Obtener YouTube");
            map.put("enable_youtube_app_title", "Activar YouTube");
            map.put("enable_youtube_app_text", "Esta aplicación no funcionará a menos que actives la aplicación YouTube.");
            map.put("enable_youtube_app_action", "Activar YouTube");
            map.put("update_youtube_app_title", "Actualizar YouTube");
            map.put("update_youtube_app_text", "Esta aplicación no funcionará a menos que actualices la aplicación YouTube.");
            map.put("update_youtube_app_action", "Actualizar YouTube");
            return;
        }
        if ("es".equals(str)) {
            map.put("error_initializing_player", "Se ha producido un error al iniciar el reproductor de YouTube.");
            map.put("get_youtube_app_title", "Descarga YouTube");
            map.put("get_youtube_app_text", "Esta aplicación no funcionará sin la aplicación YouTube, que no está instalada en el dispositivo.");
            map.put("get_youtube_app_action", "Descargar YouTube");
            map.put("enable_youtube_app_title", "Habilita la aplicación YouTube");
            map.put("enable_youtube_app_text", "Esta aplicación no funcionará si no habilitas la aplicación YouTube.");
            map.put("enable_youtube_app_action", "Habilitar YouTube");
            map.put("update_youtube_app_title", "Actualiza YouTube");
            map.put("update_youtube_app_text", "Esta aplicación no funcionará si no actualizas la aplicación YouTube.");
            map.put("update_youtube_app_action", "Actualizar YouTube");
            return;
        }
        if ("et".equals(str)) {
            map.put("error_initializing_player", "YouTube'i mängija lähtestamisel tekkis viga.");
            map.put("get_youtube_app_title", "YouTube'i rak. hankimine");
            map.put("get_youtube_app_text", "Rakendus ei käivitu ilma YouTube'i rakenduseta ja teie seadmes see praegu puudub");
            map.put("get_youtube_app_action", "Hangi YouTube'i rakendus");
            map.put("enable_youtube_app_title", "YouTube'i rakenduse lubamine");
            map.put("enable_youtube_app_text", "Rakendus ei toimi, kui te ei luba kasutada YouTube'i rakendust.");
            map.put("enable_youtube_app_action", "Luba YouTube'i rakendus");
            map.put("update_youtube_app_title", "Värskenda YouTube");
            map.put("update_youtube_app_text", "Rakendus ei toimi enne, kui olete YouTube'i rakendust värskendanud.");
            map.put("update_youtube_app_action", "Värsk. YouTube'i rakend.");
            return;
        }
        if ("fa".equals(str)) {
            map.put("error_initializing_player", "هنگام مقداردهی اولیه پخش\u200cکننده YouTube، خطایی روی داد.");
            map.put("get_youtube_app_title", "دریافت برنامه YouTube");
            map.put("get_youtube_app_text", "این برنامه بدون برنامه YouTube که در دستگاه شما موجود نیست، اجرا نمی\u200cشود");
            map.put("get_youtube_app_action", "دریافت برنامه YouTube");
            map.put("enable_youtube_app_title", "فعال کردن برنامه YouTube");
            map.put("enable_youtube_app_text", "این برنامه تنها در صورتی کار خواهد کرد که برنامه YouTube را فعال کنید.");
            map.put("enable_youtube_app_action", "فعال کردن برنامه YouTube");
            map.put("update_youtube_app_title", "به\u200cروزرسانی برنامه YouTube");
            map.put("update_youtube_app_text", "این برنامه کار نخواهد کرد مگر اینکه برنامه YouTube را به روز کنید.");
            map.put("update_youtube_app_action", "به\u200cروزرسانی برنامه YouTube");
            return;
        }
        if ("fi".equals(str)) {
            map.put("error_initializing_player", "Virhe alustettaessa YouTube-soitinta.");
            map.put("get_youtube_app_title", "Hanki YouTube-sovellus");
            map.put("get_youtube_app_text", "Tämä sovellus ei toimi ilman YouTube-sovellusta, joka puuttuu laitteesta.");
            map.put("get_youtube_app_action", "Hanki YouTube-sovellus");
            map.put("enable_youtube_app_title", "Ota YouTube-sov. käyttöön");
            map.put("enable_youtube_app_text", "Tämä sovellus ei toimi, ellet ota YouTube-sovellusta käyttöön.");
            map.put("enable_youtube_app_action", "Ota YouTube-sov. käyttöön");
            map.put("update_youtube_app_title", "Päivitä YouTube-sovellus");
            map.put("update_youtube_app_text", "Tämä sovellus ei toimi, ellet päivitä YouTube-sovellusta.");
            map.put("update_youtube_app_action", "Päivitä YouTube-sovellus");
            return;
        }
        if ("fr".equals(str)) {
            map.put("error_initializing_player", "Une erreur s'est produite lors de l'initialisation du lecteur YouTube.");
            map.put("get_youtube_app_title", "Télécharger appli YouTube");
            map.put("get_youtube_app_text", "Cette application ne fonctionnera pas sans l'application YouTube, qui n'est pas installée sur votre appareil.");
            map.put("get_youtube_app_action", "Télécharger appli YouTube");
            map.put("enable_youtube_app_title", "Activer l'appli YouTube");
            map.put("enable_youtube_app_text", "Cette application ne fonctionnera que si vous activez l'application YouTube.");
            map.put("enable_youtube_app_action", "Activer l'appli YouTube");
            map.put("update_youtube_app_title", "Mise à jour appli YouTube");
            map.put("update_youtube_app_text", "Cette application ne fonctionnera que si vous mettez à jour l'application YouTube.");
            map.put("update_youtube_app_action", "Mise à jour appli YouTube");
            return;
        }
        if ("hi".equals(str)) {
            map.put("error_initializing_player", "YouTube प्लेयर को प्रारंभ करते समय कोई त्रुटि आई.");
            map.put("get_youtube_app_title", "YouTube एप्लि. प्राप्त करें");
            map.put("get_youtube_app_text", "यह एप्लिकेशन YouTube एप्लिकेशन के बिना नहीं चलेगा, जो आपके उपकरण पर मौजूद नहीं है");
            map.put("get_youtube_app_action", "YouTube एप्लि. प्राप्त करें");
            map.put("enable_youtube_app_title", "YouTube एप्लि. सक्षम करें");
            map.put("enable_youtube_app_text", "जब तक आप YouTube एप्लिकेशन सक्षम नहीं करते, तब तक यह एप्लिकेशन कार्य नहीं करेगा.");
            map.put("enable_youtube_app_action", "YouTube एप्लि. सक्षम करें");
            map.put("update_youtube_app_title", "YouTube एप्लि. अपडेट करें");
            map.put("update_youtube_app_text", "जब तक आप YouTube एप्लिकेशन अपडेट नहीं करते, तब तक यह एप्लिकेशन कार्य नहीं करेगा.");
            map.put("update_youtube_app_action", "YouTube एप्लि. अपडेट करें");
            return;
        }
        if ("hr".equals(str)) {
            map.put("error_initializing_player", "Dogodila se pogreška tijekom pokretanja playera usluge YouTube.");
            map.put("get_youtube_app_title", "Preuzimanje apl. YouTube");
            map.put("get_youtube_app_text", "Ova se aplikacija ne može pokrenuti bez aplikacije YouTube, koja nije instalirana na vaš uređaj");
            map.put("get_youtube_app_action", "Preuzmi apl. YouTube");
            map.put("enable_youtube_app_title", "Omogućavanje apl. YouTube");
            map.put("enable_youtube_app_text", "Ova aplikacija neće funkcionirati ako ne omogućite aplikaciju YouTube.");
            map.put("enable_youtube_app_action", "Omogući apl. YouTube");
            map.put("update_youtube_app_title", "Ažuriranje apl. YouTube");
            map.put("update_youtube_app_text", "Ova aplikacija neće funkcionirati ako ne ažurirate aplikaciju YouTube.");
            map.put("update_youtube_app_action", "Ažuriraj apl. YouTube");
            return;
        }
        if ("hu".equals(str)) {
            map.put("error_initializing_player", "Hiba történt a YouTube lejátszó inicializálása során.");
            map.put("get_youtube_app_title", "YouTube alk. letöltése");
            map.put("get_youtube_app_text", "Ez az alkalmazás nem fut a YouTube alkalmazás nélkül, amely hiányzik az eszközéről.");
            map.put("get_youtube_app_action", "YouTube alk. letöltése");
            map.put("enable_youtube_app_title", "YouTube alkalmazás enged.");
            map.put("enable_youtube_app_text", "Az alkalmazás csak akkor fog működni, ha engedélyezi a YouTube alkalmazást.");
            map.put("enable_youtube_app_action", "YouTube alkalmazás enged.");
            map.put("update_youtube_app_title", "YouTube alk. frissítése");
            map.put("update_youtube_app_text", "Az alkalmazás csak akkor fog működni, ha frissíti a YouTube alkalmazást.");
            map.put("update_youtube_app_action", "YouTube alk. frissítése");
            return;
        }
        if ("in".equals(str)) {
            map.put("error_initializing_player", "Terjadi kesalahan saat memulai pemutar YouTube.");
            map.put("get_youtube_app_title", "Dapatkan Aplikasi YouTube");
            map.put("get_youtube_app_text", "Aplikasi ini tidak akan berjalan tanpa Aplikasi YouTube, yang hilang dari perangkat Anda");
            map.put("get_youtube_app_action", "Dapatkan Aplikasi YouTube");
            map.put("enable_youtube_app_title", "Aktifkan Aplikasi YouTube");
            map.put("enable_youtube_app_text", "Aplikasi ini tidak akan bekerja kecuali Anda mengaktifkan Aplikasi YouTube.");
            map.put("enable_youtube_app_action", "Aktifkan Aplikasi YouTube");
            map.put("update_youtube_app_title", "Perbarui Aplikasi YouTube");
            map.put("update_youtube_app_text", "Aplikasi ini tidak akan bekerja kecuali Anda memperbarui Aplikasi YouTube.");
            map.put("update_youtube_app_action", "Perbarui Aplikasi YouTube");
            return;
        }
        if ("it".equals(str)) {
            map.put("error_initializing_player", "Si è verificato un errore durante l'inizializzazione del player di YouTube.");
            map.put("get_youtube_app_title", "Scarica app YouTube");
            map.put("get_youtube_app_text", "Questa applicazione non funzionerà senza l'applicazione YouTube che non è presente sul tuo dispositivo");
            map.put("get_youtube_app_action", "Scarica app YouTube");
            map.put("enable_youtube_app_title", "Attiva app YouTube");
            map.put("enable_youtube_app_text", "Questa applicazione non funzionerà se non attivi l'applicazione YouTube.");
            map.put("enable_youtube_app_action", "Attiva app YouTube");
            map.put("update_youtube_app_title", "Aggiorna app YouTube");
            map.put("update_youtube_app_text", "Questa applicazione non funzionerà se non aggiorni l'applicazione YouTube.");
            map.put("update_youtube_app_action", "Aggiorna app YouTube");
            return;
        }
        if ("iw".equals(str)) {
            map.put("error_initializing_player", "אירעה שגיאה בעת אתחול נגן YouTube.");
            map.put("get_youtube_app_title", "קבל את יישום YouTube");
            map.put("get_youtube_app_text", "יישום זה לא יפעל ללא יישום YouTube, שאינו מותקן במכשיר שלך");
            map.put("get_youtube_app_action", "קבל את יישום YouTube");
            map.put("enable_youtube_app_title", "הפעל את יישום YouTube");
            map.put("enable_youtube_app_text", "יישום זה לא יעבוד אלא אם תפעיל את יישום YouTube.");
            map.put("enable_youtube_app_action", "הפעל את יישום YouTube");
            map.put("update_youtube_app_title", "עדכן את יישום YouTube");
            map.put("update_youtube_app_text", "יישום זה לא יעבוד אלא אם תעדכן את יישום YouTube.");
            map.put("update_youtube_app_action", "עדכן את יישום YouTube");
            return;
        }
        if ("ja".equals(str)) {
            map.put("error_initializing_player", "YouTubeプレーヤーの初期化中にエラーが発生しました。");
            map.put("get_youtube_app_title", "YouTubeアプリを入手");
            map.put("get_youtube_app_text", "このアプリの実行に必要なYouTubeアプリが端末にありません");
            map.put("get_youtube_app_action", "YouTubeアプリを入手");
            map.put("enable_youtube_app_title", "YouTubeアプリを有効化");
            map.put("enable_youtube_app_text", "このアプリの実行にはYouTubeアプリの有効化が必要です。");
            map.put("enable_youtube_app_action", "YouTubeアプリを有効化");
            map.put("update_youtube_app_title", "YouTubeアプリを更新");
            map.put("update_youtube_app_text", "このアプリの実行にはYouTubeアプリの更新が必要です。");
            map.put("update_youtube_app_action", "YouTubeアプリを更新");
            return;
        }
        if ("ko".equals(str)) {
            map.put("error_initializing_player", "YouTube 플레이어를 초기화하는 중에 오류가 발생했습니다.");
            map.put("get_youtube_app_title", "YouTube 앱 다운로드");
            map.put("get_youtube_app_text", "이 앱은 내 기기에 YouTube 앱이 없어서 실행되지 않습니다.");
            map.put("get_youtube_app_action", "YouTube 앱 다운로드");
            map.put("enable_youtube_app_title", "YouTube 앱 사용 설정");
            map.put("enable_youtube_app_text", "이 앱은 YouTube 앱을 사용하도록 설정하지 않으면 작동하지 않습니다.");
            map.put("enable_youtube_app_action", "YouTube 앱 사용");
            map.put("update_youtube_app_title", "YouTube 앱 업데이트");
            map.put("update_youtube_app_text", "이 앱은 YouTube 앱을 업데이트하지 않으면 작동하지 않습니다.");
            map.put("update_youtube_app_action", "YouTube 앱 업데이트");
            return;
        }
        if ("lt".equals(str)) {
            map.put("error_initializing_player", "Inicijuojant „YouTube“ grotuvą įvyko klaida.");
            map.put("get_youtube_app_title", "Gauti „YouTube“ programą");
            map.put("get_youtube_app_text", "Ši programa neveikia be „YouTube“ programos, o jos įrenginyje nėra.");
            map.put("get_youtube_app_action", "Gauti „YouTube“ programą");
            map.put("enable_youtube_app_title", "Įgalinti „YouTube“ progr.");
            map.put("enable_youtube_app_text", "Ši programa neveiks, jei neįgalinsite „YouTube“ programos.");
            map.put("enable_youtube_app_action", "Įgalinti „YouTube“ progr.");
            map.put("update_youtube_app_title", "Atnauj. „YouTube“ progr.");
            map.put("update_youtube_app_text", "Ši programa neveiks, jei neatnaujinsite „YouTube“ programos.");
            map.put("update_youtube_app_action", "Atnauj. „YouTube“ progr.");
            return;
        }
        if ("lv".equals(str)) {
            map.put("error_initializing_player", "Inicializējot YouTube atskaņotāju, radās kļūda.");
            map.put("get_youtube_app_title", "YouTube liet. iegūšana");
            map.put("get_youtube_app_text", "Šī lietotne nedarbosies bez YouTube lietotnes, kuras nav šajā ierīcē.");
            map.put("get_youtube_app_action", "Iegūt YouTube lietotni");
            map.put("enable_youtube_app_title", "YouTube liet. iespējošana");
            map.put("enable_youtube_app_text", "Lai šī lietotne darbotos, iespējojiet YouTube lietotni.");
            map.put("enable_youtube_app_action", "Iespējot YouTube lietotni");
            map.put("update_youtube_app_title", "YouTube liet. atjaunin.");
            map.put("update_youtube_app_text", "Lai šī lietotne darbotos, atjauniniet YouTube lietotni.");
            map.put("update_youtube_app_action", "Atjaun. YouTube lietotni");
            return;
        }
        if ("ms".equals(str)) {
            map.put("error_initializing_player", "Ralat berlaku semasa memulakan alat main YouTube.");
            map.put("get_youtube_app_title", "Dapatkan Apl YouTube");
            map.put("get_youtube_app_text", "Apl ini tidak akan berjalan tanpa Apl YouTube, yang tidak ada pada peranti anda");
            map.put("get_youtube_app_action", "Dapatkan Apl YouTube");
            map.put("enable_youtube_app_title", "Dayakan Apl YouTube");
            map.put("enable_youtube_app_text", "Apl ini tidak akan berfungsi kecuali anda mendayakan Apl YouTube.");
            map.put("enable_youtube_app_action", "Dayakan Apl YouTube");
            map.put("update_youtube_app_title", "Kemas kini Apl YouTube");
            map.put("update_youtube_app_text", "Apl ini tidak akan berfungsi kecuali anda mengemas kini Apl YouTube.");
            map.put("update_youtube_app_action", "Kemas kini Apl YouTube");
            return;
        }
        if ("nb".equals(str)) {
            map.put("error_initializing_player", "Det oppsto en feil da YouTube-avspilleren startet.");
            map.put("get_youtube_app_title", "Skaff deg YouTube-appen");
            map.put("get_youtube_app_text", "Denne appen kan ikke kjøre uten YouTube-appen, som du ikke har på enheten");
            map.put("get_youtube_app_action", "Skaff deg YouTube-appen");
            map.put("enable_youtube_app_title", "Aktiver YouTube-appen");
            map.put("enable_youtube_app_text", "Denne appen fungerer ikke før du aktiverer YouTube-appen.");
            map.put("enable_youtube_app_action", "Aktiver YouTube-appen");
            map.put("update_youtube_app_title", "Oppdater YouTube-appen");
            map.put("update_youtube_app_text", "Denne appen fungerer ikke før du oppdaterer YouTube-appen.");
            map.put("update_youtube_app_action", "Oppdater YouTube-appen");
            return;
        }
        if ("nl".equals(str)) {
            map.put("error_initializing_player", "Er is een fout opgetreden bij het initialiseren van de YouTube-speler.");
            map.put("get_youtube_app_title", "YouTube-app downloaden");
            map.put("get_youtube_app_text", "Deze app wordt niet uitgevoerd zonder de YouTube-app, die op uw apparaat ontbreekt");
            map.put("get_youtube_app_action", "YouTube-app downloaden");
            map.put("enable_youtube_app_title", "YouTube-app inschakelen");
            map.put("enable_youtube_app_text", "Deze app werkt niet, tenzij u de YouTube-app inschakelt.");
            map.put("enable_youtube_app_action", "YouTube-app inschakelen");
            map.put("update_youtube_app_title", "YouTube-app bijwerken");
            map.put("update_youtube_app_text", "Deze app werkt niet, tenzij u de YouTube-app bijwerkt.");
            map.put("update_youtube_app_action", "YouTube-app bijwerken");
            return;
        }
        if ("pl".equals(str)) {
            map.put("error_initializing_player", "Podczas inicjowania odtwarzacza YouTube wystąpił błąd.");
            map.put("get_youtube_app_title", "Pobierz aplikację YouTube");
            map.put("get_youtube_app_text", "Ta aplikacja nie będzie działać bez aplikacji YouTube, której nie ma na tym urządzeniu");
            map.put("get_youtube_app_action", "Pobierz aplikację YouTube");
            map.put("enable_youtube_app_title", "Włącz aplikację YouTube");
            map.put("enable_youtube_app_text", "Ta aplikacja nie będzie działać, jeśli nie włączysz aplikacji YouTube.");
            map.put("enable_youtube_app_action", "Włącz aplikację YouTube");
            map.put("update_youtube_app_title", "Zaktualizuj aplikację YouTube");
            map.put("update_youtube_app_text", "Ta aplikacja nie będzie działać, jeśli nie zaktualizujesz aplikacji YouTube.");
            map.put("update_youtube_app_action", "Zaktualizuj aplikację YouTube");
            return;
        }
        if ("pt_PT".equals(str)) {
            map.put("error_initializing_player", "Ocorreu um erro ao iniciar o leitor do YouTube.");
            map.put("get_youtube_app_title", "Obter a Aplicação YouTube");
            map.put("get_youtube_app_text", "Esta aplicação não será executada sem a Aplicação YouTube, que está em falta no seu dispositivo");
            map.put("get_youtube_app_action", "Obter a Aplicação YouTube");
            map.put("enable_youtube_app_title", "Ativar Aplicação YouTube");
            map.put("enable_youtube_app_text", "Esta aplicação não irá funcionar enquanto não ativar a Aplicação YouTube.");
            map.put("enable_youtube_app_action", "Ativar Aplicação YouTube");
            map.put("update_youtube_app_title", "Atualizar Aplica. YouTube");
            map.put("update_youtube_app_text", "Esta aplicação não irá funcionar enquanto não atualizar a Aplicação YouTube.");
            map.put("update_youtube_app_action", "Atualizar Aplica. YouTube");
            return;
        }
        if ("pt".equals(str)) {
            map.put("error_initializing_player", "Ocorreu um erro ao inicializar o player do YouTube.");
            map.put("get_youtube_app_title", "Obter aplicativo YouTube");
            map.put("get_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube, que está ausente no dispositivo.");
            map.put("get_youtube_app_action", "Obter aplicativo YouTube");
            map.put("enable_youtube_app_title", "Ativar aplicativo YouTube");
            map.put("enable_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube ativado.");
            map.put("enable_youtube_app_action", "Ativar aplicativo YouTube");
            map.put("update_youtube_app_title", "Atualizar aplic. YouTube");
            map.put("update_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube atualizado.");
            map.put("update_youtube_app_action", "Atualizar aplic. YouTube");
            return;
        }
        if ("ro".equals(str)) {
            map.put("error_initializing_player", "A apărut o eroare la iniţializarea playerului YouTube.");
            map.put("get_youtube_app_title", "Descărcaţi YouTube");
            map.put("get_youtube_app_text", "Această aplicaţie nu va rula fără aplicaţia YouTube, care lipseşte de pe gadget");
            map.put("get_youtube_app_action", "Descărcaţi YouTube");
            map.put("enable_youtube_app_title", "Activaţi YouTube");
            map.put("enable_youtube_app_text", "Această aplicaţie nu va funcţiona decât dacă activaţi aplicaţia YouTube.");
            map.put("enable_youtube_app_action", "Activaţi YouTube");
            map.put("update_youtube_app_title", "Actualizaţi YouTube");
            map.put("update_youtube_app_text", "Această aplicaţie nu va funcţiona decât dacă actualizaţi aplicaţia YouTube.");
            map.put("update_youtube_app_action", "Actualizaţi YouTube");
            return;
        }
        if ("ru".equals(str)) {
            map.put("error_initializing_player", "Не удалось запустить проигрыватель YouTube.");
            map.put("get_youtube_app_title", "Загрузите YouTube");
            map.put("get_youtube_app_text", "Чтобы запустить эту программу, установите приложение YouTube.");
            map.put("get_youtube_app_action", "Загрузить YouTube");
            map.put("enable_youtube_app_title", "Активация YouTube");
            map.put("enable_youtube_app_text", "Чтобы запустить эту программу, активируйте приложение YouTube.");
            map.put("enable_youtube_app_action", "Активировать YouTube");
            map.put("update_youtube_app_title", "Обновление YouTube");
            map.put("update_youtube_app_text", "Чтобы запустить эту программу, обновите приложение YouTube.");
            map.put("update_youtube_app_action", "Обновить YouTube");
            return;
        }
        if ("sk".equals(str)) {
            map.put("error_initializing_player", "Pri inicializácii prehrávača YouTube sa vyskytla chyba.");
            map.put("get_youtube_app_title", "Získať aplikáciu YouTube");
            map.put("get_youtube_app_text", "Túto aplikáciu nebude možné spustiť bez aplikácie YouTube, ktorá na zariadení nie je nainštalovaná.");
            map.put("get_youtube_app_action", "Získať aplikáciu YouTube");
            map.put("enable_youtube_app_title", "Povoliť aplikáciu YouTube");
            map.put("enable_youtube_app_text", "Táto aplikácia bude fungovať až po povolení aplikácie YouTube.");
            map.put("enable_youtube_app_action", "Povoliť aplikáciu YouTube");
            map.put("update_youtube_app_title", "Aktualizovať apl. YouTube");
            map.put("update_youtube_app_text", "Táto aplikácia bude fungovať až po aktualizácii aplikácie YouTube.");
            map.put("update_youtube_app_action", "Aktualizovať apl. YouTube");
            return;
        }
        if ("sl".equals(str)) {
            map.put("error_initializing_player", "Napaka med inicializacijo YouTubovega predvajalnika.");
            map.put("get_youtube_app_title", "Prenos aplikacije YouTube");
            map.put("get_youtube_app_text", "Ta aplikacija ne bo delovala brez aplikacije YouTube, ki je ni v vaši napravi");
            map.put("get_youtube_app_action", "Prenos aplikacije YouTube");
            map.put("enable_youtube_app_title", "Omog. aplikacije YouTube");
            map.put("enable_youtube_app_text", "Ta aplikacija ne bo delovala, če ne omogočite aplikacije YouTube.");
            map.put("enable_youtube_app_action", "Omog. aplikacijo YouTube");
            map.put("update_youtube_app_title", "Posodob. aplikacije YouTube");
            map.put("update_youtube_app_text", "Ta aplikacija ne bo delovala, če ne posodobite aplikacije YouTube.");
            map.put("update_youtube_app_action", "Posod. aplikacijo YouTube");
            return;
        }
        if ("sr".equals(str)) {
            map.put("error_initializing_player", "Дошло је до грешке при покретању YouTube плејера.");
            map.put("get_youtube_app_title", "Преузимање аплик. YouTube");
            map.put("get_youtube_app_text", "Ова апликација неће функционисати без апликације YouTube, која недостаје на уређају");
            map.put("get_youtube_app_action", "Преузми апликац. YouTube");
            map.put("enable_youtube_app_title", "Омогућавање апл. YouTube");
            map.put("enable_youtube_app_text", "Ова апликације неће функционисати ако не омогућите апликацију YouTube.");
            map.put("enable_youtube_app_action", "Омогући апликац. YouTube");
            map.put("update_youtube_app_title", "Ажурирање аплик. YouTube");
            map.put("update_youtube_app_text", "Ова апликације неће функционисати ако не ажурирате апликацију YouTube.");
            map.put("update_youtube_app_action", "Ажурирај апликац. YouTube");
            return;
        }
        if ("sv".equals(str)) {
            map.put("error_initializing_player", "Ett fel uppstod när YouTube-spelaren skulle startas.");
            map.put("get_youtube_app_title", "Hämta YouTube-appen");
            map.put("get_youtube_app_text", "YouTube-appen krävs för att den här appen ska kunna köras. Du har inte YouTube-appen på din enhet.");
            map.put("get_youtube_app_action", "Hämta YouTube-appen");
            map.put("enable_youtube_app_title", "Aktivera YouTube-appen");
            map.put("enable_youtube_app_text", "Du måste aktivera YouTube-appen för att den här appen ska fungera.");
            map.put("enable_youtube_app_action", "Aktivera YouTube-appen");
            map.put("update_youtube_app_title", "Uppdatera YouTube-appen");
            map.put("update_youtube_app_text", "Du måste uppdatera YouTube-appen för att den här appen ska fungera.");
            map.put("update_youtube_app_action", "Uppdatera YouTube-appen");
            return;
        }
        if ("sw".equals(str)) {
            map.put("error_initializing_player", "Hitilafu ilitokea wakati wa kuanzisha kichezeshi cha YouTube.");
            map.put("get_youtube_app_title", "Pata Programu ya YouTube");
            map.put("get_youtube_app_text", "Programu hii haitaendeshwa bila Programu ya YouTube, ambayo inakosekana kwenye kifaa chako.");
            map.put("get_youtube_app_action", "Pata Programu ya YouTube");
            map.put("enable_youtube_app_title", "Wezesha Programu ya YouTube");
            map.put("enable_youtube_app_text", "Programu hii haitafanya kazi isipokuwa uwezeshe Programu ya YouTube.");
            map.put("enable_youtube_app_action", "Wezesha Programu ya YouTube");
            map.put("update_youtube_app_title", "Sasisha Programu ya YouTube");
            map.put("update_youtube_app_text", "Programu hii haitafanya kazi mpaka usasishe Programu ya YouTube.");
            map.put("update_youtube_app_action", "Sasisha Programu ya YouTube");
            return;
        }
        if ("th".equals(str)) {
            map.put("error_initializing_player", "เกิดข้อผิดพลาดในขณะเริ่มต้นโปรแกรมเล่น YouTube");
            map.put("get_youtube_app_title", "รับแอปพลิเคชัน YouTube");
            map.put("get_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานหากไม่มีแอปพลิเคชัน YouTube ซึ่งไม่มีในอุปกรณ์ของคุณ");
            map.put("get_youtube_app_action", "รับแอปพลิเคชัน YouTube");
            map.put("enable_youtube_app_title", "เปิดใช้งานแอป YouTube");
            map.put("enable_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานจนกว่าคุณจะเปิดใช้งานแอปพลิเคชัน YouTube");
            map.put("enable_youtube_app_action", "เปิดใช้งานแอป YouTube");
            map.put("update_youtube_app_title", "อัปเดตแอปพลิเคชัน YouTube");
            map.put("update_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานจนกว่าคุณจะอัปเดตแอปพลิเคชัน YouTube");
            map.put("update_youtube_app_action", "อัปเดตแอปพลิเคชัน YouTube");
            return;
        }
        if ("tl".equals(str)) {
            map.put("error_initializing_player", "May naganap na error habang sinisimulan ang player ng YouTube.");
            map.put("get_youtube_app_title", "Kunin ang YouTube App");
            map.put("get_youtube_app_text", "Hindi gagana ang app na ito nang wala ang YouTube App, na nawawala sa iyong device");
            map.put("get_youtube_app_action", "Kunin ang YouTube App");
            map.put("enable_youtube_app_title", "Paganahin ang YouTube App");
            map.put("enable_youtube_app_text", "Hindi gagana ang app na ito maliban kung paganahin mo ang YouTube App.");
            map.put("enable_youtube_app_action", "Paganahin ang YouTube App");
            map.put("update_youtube_app_title", "I-update ang YouTube App");
            map.put("update_youtube_app_text", "Hindi gagana ang app na ito maliban kung i-update mo ang YouTube App.");
            map.put("update_youtube_app_action", "I-update ang YouTube App");
            return;
        }
        if ("tr".equals(str)) {
            map.put("error_initializing_player", "YouTube oynatıcısı başlatılırken bir hata oluştu.");
            map.put("get_youtube_app_title", "YouTube Uygulamasını edinin");
            map.put("get_youtube_app_text", "Cihazınızda bulunmayan YouTube Uygulaması olmadan bu uygulama çalışmaz");
            map.put("get_youtube_app_action", "YouTube Uygulamasını edinin");
            map.put("enable_youtube_app_title", "YouTube Uygulamasını etkinleştirin");
            map.put("enable_youtube_app_text", "YouTube Uygulamasını etkinleştirmediğiniz sürece bu uygulama çalışmaz.");
            map.put("enable_youtube_app_action", "YouTube Uygulamasını etkinleştirin");
            map.put("update_youtube_app_title", "YouTube Uygulamasını güncelleyin");
            map.put("update_youtube_app_text", "YouTube Uygulaması güncellenmedikçe bu uygulama çalışmaz.");
            map.put("update_youtube_app_action", "YouTube Uygulamasını güncelle");
            return;
        }
        if ("uk".equals(str)) {
            map.put("error_initializing_player", "Під час ініціалізації програвача YouTube сталася помилка.");
            map.put("get_youtube_app_title", "Отримати програму YouTube");
            map.put("get_youtube_app_text", "Ця програма не запуститься без програми YouTube, яку не встановлено на вашому пристрої");
            map.put("get_youtube_app_action", "Отримати програму YouTube");
            map.put("enable_youtube_app_title", "Увімк. програму YouTube");
            map.put("enable_youtube_app_text", "Ця програма не працюватиме, поки ви не ввімкнете програму YouTube.");
            map.put("enable_youtube_app_action", "Увімк. програму YouTube");
            map.put("update_youtube_app_title", "Оновити програму YouTube");
            map.put("update_youtube_app_text", "Ця програма не працюватиме, поки ви не оновите програму YouTube.");
            map.put("update_youtube_app_action", "Оновити програму YouTube");
            return;
        }
        if ("vi".equals(str)) {
            map.put("error_initializing_player", "Đã xảy ra lỗi trong khi khởi chạy trình phát YouTube.");
            map.put("get_youtube_app_title", "Tải ứng dụng YouTube");
            map.put("get_youtube_app_text", "Ứng dụng này sẽ không chạy nếu không có ứng dụng YouTube, ứng dụng này bị thiếu trong thiết bị của bạn");
            map.put("get_youtube_app_action", "Tải ứng dụng YouTube");
            map.put("enable_youtube_app_title", "Bật ứng dụng YouTube");
            map.put("enable_youtube_app_text", "Ứng dụng này sẽ không hoạt động trừ khi bạn bật ứng dụng YouTube.");
            map.put("enable_youtube_app_action", "Bật ứng dụng YouTube");
            map.put("update_youtube_app_title", "Cập nhật ứng dụng YouTube");
            map.put("update_youtube_app_text", "Ứng dụng này sẽ không hoạt động trừ khi bạn cập nhật ứng dụng YouTube.");
            map.put("update_youtube_app_action", "Cập nhật ứng dụng YouTube");
            return;
        }
        if ("zh_CN".equals(str)) {
            map.put("error_initializing_player", "初始化 YouTube 播放器时出现错误。");
            map.put("get_youtube_app_title", "获取 YouTube 应用");
            map.put("get_youtube_app_text", "您的设备中没有 YouTube 应用，您必须先安装 YouTube 应用才能运行此应用。");
            map.put("get_youtube_app_action", "获取 YouTube 应用");
            map.put("enable_youtube_app_title", "启用 YouTube 应用");
            map.put("enable_youtube_app_text", "您需要启用 YouTube 应用才能运行该应用。");
            map.put("enable_youtube_app_action", "启用 YouTube 应用");
            map.put("update_youtube_app_title", "更新 YouTube 应用");
            map.put("update_youtube_app_text", "您必须更新 YouTube 应用才能运行此应用。");
            map.put("update_youtube_app_action", "更新 YouTube 应用");
            return;
        }
        if ("zh_TW".equals(str)) {
            map.put("error_initializing_player", "初始化 YouTube 播放器時發生錯誤。");
            map.put("get_youtube_app_title", "取得 YouTube 應用程式");
            map.put("get_youtube_app_text", "您必須啟用 YouTube 應用程式，這個應用程式才能運作，但系統在裝置中找不到 YouTube 應用程式。");
            map.put("get_youtube_app_action", "取得 YouTube 應用程式");
            map.put("enable_youtube_app_title", "啟用 YouTube 應用程式");
            map.put("enable_youtube_app_text", "您必須啟用 YouTube 應用程式，這個應用程式才能運作。");
            map.put("enable_youtube_app_action", "啟用 YouTube 應用程式");
            map.put("update_youtube_app_title", "更新 YouTube 應用程式");
            map.put("update_youtube_app_text", "您必須更新 YouTube 應用程式，這個應用程式才能運作。");
            map.put("update_youtube_app_action", "更新 YouTube 應用程式");
            return;
        }
        if ("zu".equals(str)) {
            map.put("error_initializing_player", "Kuvele iphutha ngenkathi kuqaliswa isidlali se-YouTube");
            map.put("get_youtube_app_title", "Thola uhlelo lokusebenza lwe-YouTube");
            map.put("get_youtube_app_text", "Lolu hlelo kusebenza angeke lusebenze ngaphandle kohlelo lokusebenza lwe-YouTube, olungekho kudivayisi yakho");
            map.put("get_youtube_app_action", "Thola uhelo lokusebenza lwe-YouTube");
            map.put("enable_youtube_app_title", "Nika amandla uhlelo lokusebenza lwe-YouTube");
            map.put("enable_youtube_app_text", "Lolu hlelo lokusebenza angeke lusebenze uma unganikanga amandla uhlelo lokusebenza lwe-YouTube.");
            map.put("enable_youtube_app_action", "Nika amandla uhlelo lokusebenza lwe-YouTube");
            map.put("update_youtube_app_title", "Buyekeza uhlelo lokusebenza lwe-YouTube");
            map.put("update_youtube_app_text", "Lolu hlelo lokusebenza angeke lusebenze uma ungabuyekezanga uhlelo lokusebenza lwe-YouTube.");
            map.put("update_youtube_app_action", "Buyekeza uhlelo lokusebenza lwe-YouTube");
        }
    }

    public static ViewGroup c0(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static int c1(w83 w83Var, byte[] bArr, int i, int i2, g53 g53Var) throws IOException {
        int iW0 = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iW0 = W0(i3, bArr, iW0, g53Var);
            i3 = g53Var.a;
        }
        int i4 = iW0;
        if (i3 < 0 || i3 > i2 - i4) {
            throw e73.a();
        }
        Object objC = w83Var.c();
        int i5 = i3 + i4;
        w83Var.g(objC, bArr, i4, i5, g53Var);
        w83Var.j(objC);
        g53Var.c = objC;
        return i5;
    }

    public static void c2(Bundle bundle, String str, List<String> list) {
        if (list != null) {
            bundle.putStringArrayList(str, new ArrayList<>(list));
        }
    }

    public static void c3(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) throws e73 {
        if (!m4(b3)) {
            if ((((b3 + 112) + (b2 << 28)) >> 30) == 0 && !m4(b4) && !m4(b5)) {
                int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
                cArr[i] = (char) ((i2 >>> 10) + 55232);
                cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                return;
            }
        }
        throw e73.h();
    }

    public static int c4(byte[] bArr, int i, w74 w74Var) throws l94 {
        int iI1 = i1(bArr, i, w74Var);
        int i2 = w74Var.a;
        if (i2 < 0) {
            throw l94.b();
        }
        if (i2 == 0) {
            w74Var.c = "";
            return iI1;
        }
        w74Var.c = qb4.a.b(bArr, iI1, i2);
        return iI1 + i2;
    }

    public static <TResult> TResult d(e45<TResult> e45Var) throws ExecutionException, InterruptedException {
        bi.i("Must not be called on the main application thread");
        bi.j(e45Var, "Task must not be null");
        if (e45Var.n()) {
            return (TResult) F1(e45Var);
        }
        i45 i45Var = new i45(null);
        k2(e45Var, i45Var);
        i45Var.a.await();
        return (TResult) F1(e45Var);
    }

    public static v85 d0(View view) {
        ViewGroup viewGroupC0 = c0(view);
        if (viewGroupC0 == null) {
            return null;
        }
        return new u85(viewGroupC0);
    }

    public static int d1(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static void d2(nd0 nd0Var, String str, String str2) {
        nd0Var.d(jo.d(jo.x(str2, jo.x(str, 3)), str, "(", str2, ");"));
    }

    public static void d3(byte b2, byte b3, byte b4, char[] cArr, int i) throws e73 {
        if (m4(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || m4(b4)))) {
            throw e73.h();
        }
        cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
    }

    public static long d4(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e) {
            if ("0".equals(str) || "-1".equals(str)) {
                tg0.c("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            Log.e("Volley", tg0.d("Unable to parse dateStr: %s, falling back to 0", str), e);
            return 0L;
        }
    }

    public static <TResult> TResult e(e45<TResult> e45Var, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        bi.i("Must not be called on the main application thread");
        bi.j(e45Var, "Task must not be null");
        bi.j(timeUnit, "TimeUnit must not be null");
        if (e45Var.n()) {
            return (TResult) F1(e45Var);
        }
        i45 i45Var = new i45(null);
        k2(e45Var, i45Var);
        if (i45Var.a.await(j, timeUnit)) {
            return (TResult) F1(e45Var);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static int e0(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i2);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static int e1(byte[] bArr, int i, g53 g53Var) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return W0(b2, bArr, i2, g53Var);
        }
        g53Var.a = b2;
        return i2;
    }

    public static void e2(aw2<?> aw2Var, String str) {
        ss0 ss0Var = new ss0(str);
        aw2Var.i(new sv2(aw2Var, ss0Var), ms0.f);
    }

    public static void e3(byte b2, byte b3, char[] cArr, int i) throws e73 {
        if (b2 < -62 || m4(b3)) {
            throw e73.h();
        }
        cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
    }

    public static long e4(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    public static String f(int i, int i2, String str) {
        if (i < 0) {
            return q0("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return q0("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(jo.g("negative size: ", i2));
    }

    public static Drawable f0(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawableB;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawableB = p0.b(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawableB;
    }

    public static int f1(byte[] bArr, int i, b73<?> b73Var, g53 g53Var) throws IOException {
        v63 v63Var = (v63) b73Var;
        int iE1 = e1(bArr, i, g53Var);
        int i2 = g53Var.a + iE1;
        while (iE1 < i2) {
            iE1 = e1(bArr, iE1, g53Var);
            v63Var.o(g53Var.a);
        }
        if (iE1 == i2) {
            return iE1;
        }
        throw e73.a();
    }

    public static void f2(o13 o13Var) throws GeneralSecurityException {
        T1(u1(o13Var.x().x()));
        J1(o13Var.x().y());
        if (o13Var.z() == j13.UNKNOWN_FORMAT) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        i23 i23VarX = o13Var.y().x();
        Logger logger = px2.a;
        synchronized (px2.class) {
            yw2<?> yw2VarC = px2.j(i23VarX.x()).c();
            if (!px2.d.get(i23VarX.x()).booleanValue()) {
                String strValueOf = String.valueOf(i23VarX.x());
                throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
            }
            ((xw2) yw2VarC).c(i23VarX.y());
        }
    }

    public static void f3(nd0 nd0Var, String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(string);
        sb.append(");");
        String strValueOf = String.valueOf(sb.toString());
        is0.zzdz(strValueOf.length() != 0 ? "Dispatching AFMA event: ".concat(strValueOf) : new String("Dispatching AFMA event: "));
        nd0Var.d(sb.toString());
    }

    public static boolean f4(byte b2) {
        return b2 > -65;
    }

    public static void g(String str) {
        if (el3.a >= 18) {
            Trace.beginSection(str);
        }
    }

    public static wk6 g0(bd6 bd6Var) {
        return bd6Var.U().H("__local_write_time__").X();
    }

    public static int g1(byte[] bArr, int i, ow3 ow3Var) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return X0(b2, bArr, i2, ow3Var);
        }
        ow3Var.a = b2;
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x024c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void g2(defpackage.e83 r13, java.lang.StringBuilder r14, int r15) throws java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.g2(e83, java.lang.StringBuilder, int):void");
    }

    public static void g3(qw4 qw4Var, SQLiteDatabase sQLiteDatabase) {
        if (qw4Var == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            qw4Var.i.a("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            qw4Var.i.a("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            qw4Var.i.a("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        qw4Var.i.a("Failed to turn on database write permission for owner");
    }

    public static int g4(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static ExecutorService h(String str) {
        ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ej5(str, new AtomicLong(1L)), new ThreadPoolExecutor.DiscardPolicy()));
        Runtime.getRuntime().addShutdownHook(new Thread(new fj5(str, executorServiceUnconfigurableExecutorService, 2L, TimeUnit.SECONDS), jo.n("Crashlytics Shutdown Hook for ", str)));
        return executorServiceUnconfigurableExecutorService;
    }

    public static float h0(View view) {
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            AtomicInteger atomicInteger = ha.a;
            elevation += ((View) parent).getElevation();
        }
        return elevation;
    }

    public static int h1(byte[] bArr, int i, xx3<?> xx3Var, ow3 ow3Var) throws IOException {
        tx3 tx3Var = (tx3) xx3Var;
        int iG1 = g1(bArr, i, ow3Var);
        int i2 = ow3Var.a + iG1;
        while (iG1 < i2) {
            iG1 = g1(bArr, iG1, ow3Var);
            tx3Var.n(tx3Var.g, ow3Var.a);
        }
        if (iG1 == i2) {
            return iG1;
        }
        throw yx3.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0247  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void h2(defpackage.xy3 r18, java.lang.StringBuilder r19, int r20) throws java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.h2(xy3, java.lang.StringBuilder, int):void");
    }

    public static void h3(Object obj, Object obj2) {
        if (obj == null) {
            String strValueOf = String.valueOf(obj2);
            throw new NullPointerException(jo.O(strValueOf.length() + 24, "null key in entry: null=", strValueOf));
        }
        if (obj2 != null) {
            return;
        }
        String strValueOf2 = String.valueOf(obj);
        throw new NullPointerException(jo.c(strValueOf2.length() + 26, "null value in entry: ", strValueOf2, "=null"));
    }

    public static int h4(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static <TResult> e45<TResult> i(Executor executor, Callable<TResult> callable) {
        bi.j(executor, "Executor must not be null");
        bi.j(callable, "Callback must not be null");
        e55 e55Var = new e55();
        executor.execute(new g55(e55Var, callable));
        return e55Var;
    }

    public static bd6 i0(bd6 bd6Var) {
        bd6 bd6VarG = bd6Var.U().G("__previous_value__", null);
        return o0(bd6VarG) ? i0(bd6VarG) : bd6VarG;
    }

    public static int i1(byte[] bArr, int i, w74 w74Var) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return N2(b2, bArr, i2, w74Var);
        }
        w74Var.a = b2;
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x024c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void i2(defpackage.am4 r13, java.lang.StringBuilder r14, int r15) throws java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.i2(am4, java.lang.StringBuilder, int):void");
    }

    public static final void i3(StringBuilder sb, int i, String str, Object obj) throws SecurityException {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                i3(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                i3(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            g84 g84Var = g84.f;
            sb.append(K1(new e84(((String) obj).getBytes(j94.a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof g84) {
            sb.append(": \"");
            sb.append(K1((g84) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof c94) {
            sb.append(" {");
            C3((c94) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i4 = i + 2;
        i3(sb, i4, "key", entry.getKey());
        i3(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
    }

    public static int i4(byte[] bArr, int i, w74 w74Var) throws l94 {
        int iI1 = i1(bArr, i, w74Var);
        int i2 = w74Var.a;
        if (i2 < 0) {
            throw l94.b();
        }
        if (i2 > bArr.length - iI1) {
            throw l94.a();
        }
        if (i2 == 0) {
            w74Var.c = g84.f;
            return iI1;
        }
        w74Var.c = g84.s(bArr, iI1, i2);
        return iI1 + i2;
    }

    public static void j(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static y95 j0(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new y95(context, resourceId);
    }

    public static long j1(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080 A[Catch: SQLiteException -> 0x00e9, TryCatch #1 {SQLiteException -> 0x00e9, blocks: (B:20:0x0045, B:22:0x0071, B:24:0x0080, B:26:0x0088, B:27:0x008b, B:28:0x00b8, B:30:0x00bb, B:32:0x00be, B:34:0x00c6, B:35:0x00cd, B:36:0x00d0, B:38:0x00d6, B:41:0x00e5, B:42:0x00e8, B:21:0x006a), top: B:55:0x0045, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb A[Catch: SQLiteException -> 0x00e9, LOOP:1: B:30:0x00bb->B:35:0x00cd, LOOP_START, PHI: r14
      0x00bb: PHI (r14v1 int) = (r14v0 int), (r14v2 int) binds: [B:29:0x00b9, B:35:0x00cd] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {SQLiteException -> 0x00e9, blocks: (B:20:0x0045, B:22:0x0071, B:24:0x0080, B:26:0x0088, B:27:0x008b, B:28:0x00b8, B:30:0x00bb, B:32:0x00be, B:34:0x00c6, B:35:0x00cd, B:36:0x00d0, B:38:0x00d6, B:41:0x00e5, B:42:0x00e8, B:21:0x006a), top: B:55:0x0045, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6 A[Catch: SQLiteException -> 0x00e9, TryCatch #1 {SQLiteException -> 0x00e9, blocks: (B:20:0x0045, B:22:0x0071, B:24:0x0080, B:26:0x0088, B:27:0x008b, B:28:0x00b8, B:30:0x00bb, B:32:0x00be, B:34:0x00c6, B:35:0x00cd, B:36:0x00d0, B:38:0x00d6, B:41:0x00e5, B:42:0x00e8, B:21:0x006a), top: B:55:0x0045, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void j2(defpackage.qw4 r15, android.database.sqlite.SQLiteDatabase r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String[] r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.j2(qw4, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    public static byte[] j3(String str, boolean z) throws IllegalArgumentException {
        byte[] bArrDecode = android.util.Base64.decode(str, z ? 11 : 2);
        if (bArrDecode.length != 0 || str.length() <= 0) {
            return bArrDecode;
        }
        throw new IllegalArgumentException(str.length() != 0 ? "Unable to decode ".concat(str) : new String("Unable to decode "));
    }

    public static long j4(ByteBuffer byteBuffer) {
        long jW3 = (W3(byteBuffer) << 32) + 0;
        if (jW3 >= 0) {
            return W3(byteBuffer) + jW3;
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    public static void k(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static <V> V k0(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public static long k1(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            throw new IndexOutOfBoundsException(jo.M(67, "Out of bound index with offput: 0 and length: ", length));
        }
        int i = 37;
        long j = -5435081209227447693L;
        if (length <= 32) {
            if (length > 16) {
                long j2 = (length << 1) - 7286425919675154353L;
                long jR2 = R2(bArr, 0) * (-5435081209227447693L);
                long jR22 = R2(bArr, 8);
                int i2 = length + 0;
                long jR23 = R2(bArr, i2 - 8) * j2;
                return j1((R2(bArr, i2 - 16) * (-7286425919675154353L)) + Long.rotateRight(jR23, 30) + Long.rotateRight(jR2 + jR22, 43), Long.rotateRight(jR22 - 7286425919675154353L, 18) + jR2 + jR23, j2);
            }
            if (length >= 8) {
                long j3 = (length << 1) - 7286425919675154353L;
                long jR24 = R2(bArr, 0) - 7286425919675154353L;
                long jR25 = R2(bArr, (length + 0) - 8);
                return j1((Long.rotateRight(jR25, 37) * j3) + jR24, (Long.rotateRight(jR24, 25) + jR25) * j3, j3);
            }
            if (length >= 4) {
                return j1(length + ((d1(bArr, 0) & 4294967295L) << 3), d1(bArr, (length + 0) - 4) & 4294967295L, (length << 1) - 7286425919675154353L);
            }
            if (length <= 0) {
                return -7286425919675154353L;
            }
            long j4 = (((bArr[0] & 255) + ((bArr[(length >> 1) + 0] & 255) << 8)) * (-7286425919675154353L)) ^ ((length + ((bArr[(length - 1) + 0] & 255) << 2)) * (-4348849565147123417L));
            return (j4 ^ (j4 >>> 47)) * (-7286425919675154353L);
        }
        if (length <= 64) {
            long j5 = (length << 1) - 7286425919675154353L;
            long jR26 = R2(bArr, 0) * (-7286425919675154353L);
            long jR27 = R2(bArr, 8);
            int i3 = length + 0;
            long jR28 = R2(bArr, i3 - 8) * j5;
            long jRotateRight = Long.rotateRight(jR28, 30) + Long.rotateRight(jR26 + jR27, 43) + (R2(bArr, i3 - 16) * (-7286425919675154353L));
            long jJ1 = j1(jRotateRight, Long.rotateRight(jR27 - 7286425919675154353L, 18) + jR26 + jR28, j5);
            long jR29 = R2(bArr, 16) * j5;
            long jR210 = R2(bArr, 24);
            long jR211 = (R2(bArr, i3 - 32) + jRotateRight) * j5;
            return j1(Long.rotateRight(jR211, 30) + Long.rotateRight(jR29 + jR210, 43) + ((R2(bArr, i3 - 24) + jJ1) * j5), Long.rotateRight(jR210 + jR26, 18) + jR29 + jR211, j5);
        }
        long j6 = 2480279821605975764L;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        int i4 = length - 1;
        int i5 = ((i4 / 64) << 6) + 0;
        int i6 = i4 & 63;
        int i7 = (i5 + i6) - 63;
        long jR212 = R2(bArr, 0) + 95310865018149119L;
        char c = 0;
        long j7 = 1390051526045402406L;
        int i8 = 0;
        while (true) {
            int i9 = i6;
            long jRotateRight2 = Long.rotateRight(R2(bArr, i8 + 8) + jR212 + j6 + jArr[c], i) * j;
            long jRotateRight3 = Long.rotateRight(R2(bArr, i8 + 48) + j6 + jArr[1], 42) * j;
            long j8 = jRotateRight2 ^ jArr2[1];
            long jR213 = R2(bArr, i8 + 40) + jArr[0] + jRotateRight3;
            long jRotateRight4 = Long.rotateRight(j7 + jArr2[0], 33) * j;
            int i10 = i5;
            t2(bArr, i8, jArr[1] * j, j8 + jArr2[0], jArr);
            t2(bArr, i8 + 32, jArr2[1] + jRotateRight4, R2(bArr, i8 + 16) + jR213, jArr2);
            i8 += 64;
            if (i8 == i10) {
                long j9 = ((j8 & 255) << 1) - 5435081209227447693L;
                jArr2[0] = jArr2[0] + i9;
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long jRotateRight5 = Long.rotateRight(R2(bArr, i7 + 8) + jRotateRight4 + jR213 + jArr[0], 37) * j9;
                long jRotateRight6 = Long.rotateRight(R2(bArr, i7 + 48) + jR213 + jArr[1], 42) * j9;
                long j10 = jRotateRight5 ^ (jArr2[1] * 9);
                long jR214 = R2(bArr, i7 + 40) + (jArr[0] * 9) + jRotateRight6;
                long jRotateRight7 = Long.rotateRight(j8 + jArr2[0], 33) * j9;
                t2(bArr, i7, jArr[1] * j9, j10 + jArr2[0], jArr);
                t2(bArr, i7 + 32, jArr2[1] + jRotateRight7, R2(bArr, i7 + 16) + jR214, jArr2);
                return j1((((jR214 >>> 47) ^ jR214) * (-4348849565147123417L)) + j1(jArr[0], jArr2[0], j9) + j10, j1(jArr[1], jArr2[1], j9) + jRotateRight7, j9);
            }
            i = 37;
            c = 0;
            i5 = i10;
            i6 = i9;
            j = -5435081209227447693L;
            j6 = jR213;
            j7 = j8;
            jR212 = jRotateRight4;
        }
    }

    public static void k2(e45<?> e45Var, h45 h45Var) {
        Executor executor = g45.b;
        e45Var.g(executor, h45Var);
        e45Var.e(executor, h45Var);
        e45Var.a(executor, h45Var);
    }

    public static byte[] k3(ByteBuffer byteBuffer) throws IOException {
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IOException("Negative length");
        }
        if (i > byteBuffer.remaining()) {
            throw new IOException(jo.N(90, "Underflow while reading length-prefixed value. Length: ", i, ", available: ", byteBuffer.remaining()));
        }
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return bArr;
    }

    public static uk2 k4(zzvt zzvtVar) {
        return zzvtVar.m ? new uk2(-3, 0, true) : new uk2(zzvtVar.i, zzvtVar.f, false);
    }

    public static void l(boolean z, String str, char c) {
        if (!z) {
            throw new IllegalArgumentException(q0(str, Character.valueOf(c)));
        }
    }

    public static boolean l0(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static Uri l1(String str, String str2, String str3) {
        int iIndexOf = str.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("?adurl");
        }
        if (iIndexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i = iIndexOf + 1;
        StringBuilder sb = new StringBuilder(str.substring(0, i));
        jo.J(sb, str2, "=", str3, "&");
        sb.append(str.substring(i));
        return Uri.parse(sb.toString());
    }

    public static <T> void l2(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }

    public static boolean l3(String str) {
        return "audio".equals(n3(str));
    }

    public static zzvh l4(Throwable th) {
        if (th instanceof oz1) {
            oz1 oz1Var = (oz1) th;
            return w1(oz1Var.e, oz1Var.f);
        }
        if (th instanceof bu1) {
            return th.getMessage() == null ? x1(((bu1) th).e, null, null) : x1(((bu1) th).e, th.getMessage(), null);
        }
        if (!(th instanceof zzap)) {
            return x1(dm2.INTERNAL_ERROR, null, null);
        }
        zzap zzapVar = (zzap) th;
        return new zzvh(zzapVar.getErrorCode(), n4(zzapVar.getMessage()), MobileAds.ERROR_DOMAIN, null, null);
    }

    public static void m(boolean z, String str, int i) {
        if (!z) {
            throw new IllegalArgumentException(q0(str, Integer.valueOf(i)));
        }
    }

    public static boolean m0(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }

    public static Bundle m1(Bundle bundle, String str) {
        Bundle bundle2 = bundle.getBundle(str);
        return bundle2 == null ? new Bundle() : bundle2;
    }

    public static void m2(String str, j40<?> j40Var, uh0 uh0Var) throws uh0 {
        yc0 yc0VarZzj = j40Var.zzj();
        int iZzi = j40Var.zzi();
        try {
            im3 im3Var = (im3) yc0VarZzj;
            int i = im3Var.b + 1;
            im3Var.b = i;
            int i2 = im3Var.a;
            im3Var.a = i2 + ((int) (i2 * 1.0f));
            if (!(i <= 1)) {
                throw uh0Var;
            }
            j40Var.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(iZzi)));
        } catch (uh0 e) {
            j40Var.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(iZzi)));
            throw e;
        }
    }

    public static boolean m3(String str) {
        return "video".equals(n3(str));
    }

    public static boolean m4(byte b2) {
        return b2 > -65;
    }

    public static void n(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(q0(str, Long.valueOf(j)));
        }
    }

    public static boolean n0(View view) {
        AtomicInteger atomicInteger = ha.a;
        return view.getLayoutDirection() == 1;
    }

    public static Pair<ByteBuffer, Long> n1(RandomAccessFile randomAccessFile, int i) throws IOException {
        int i2;
        if (i < 0 || i > 65535) {
            throw new IllegalArgumentException(jo.M(27, "maxCommentSize: ", i));
        }
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(((int) Math.min(i, length - 22)) + 22);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        long jCapacity = length - byteBufferAllocate.capacity();
        randomAccessFile.seek(jCapacity);
        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
        R3(byteBufferAllocate);
        int iCapacity = byteBufferAllocate.capacity();
        if (iCapacity >= 22) {
            int i3 = iCapacity - 22;
            int iMin = Math.min(i3, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            for (int i4 = 0; i4 < iMin; i4++) {
                i2 = i3 - i4;
                if (byteBufferAllocate.getInt(i2) == 101010256 && (byteBufferAllocate.getShort(i2 + 20) & 65535) == i4) {
                    break;
                }
            }
            i2 = -1;
        } else {
            i2 = -1;
        }
        if (i2 == -1) {
            return null;
        }
        byteBufferAllocate.position(i2);
        ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
        byteBufferSlice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(byteBufferSlice, Long.valueOf(jCapacity + i2));
    }

    public static void n2(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (obj != null) {
            if (!(obj instanceof c14)) {
                String strB4 = B4(str);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(strB4);
                stringBuffer2.append(": ");
                if (obj instanceof String) {
                    String strConcat = (String) obj;
                    if (!strConcat.startsWith("http") && strConcat.length() > 200) {
                        strConcat = String.valueOf(strConcat.substring(0, 200)).concat("[...]");
                    }
                    int length = strConcat.length();
                    StringBuilder sb = new StringBuilder(length);
                    for (int i = 0; i < length; i++) {
                        char cCharAt = strConcat.charAt(i);
                        if (cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\'') {
                            sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            sb.append(cCharAt);
                        }
                    }
                    String string = sb.toString();
                    stringBuffer2.append("\"");
                    stringBuffer2.append(string);
                    stringBuffer2.append("\"");
                } else if (obj instanceof byte[]) {
                    stringBuffer2.append('\"');
                    for (byte b2 : (byte[]) obj) {
                        int i2 = b2 & 255;
                        if (i2 == 92 || i2 == 34) {
                            stringBuffer2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                        } else {
                            if (i2 < 32 || i2 >= 127) {
                                stringBuffer2.append(String.format("\\%03o", Integer.valueOf(i2)));
                            }
                        }
                        stringBuffer2.append((char) i2);
                    }
                    stringBuffer2.append('\"');
                } else {
                    stringBuffer2.append(obj);
                }
                stringBuffer2.append("\n");
                return;
            }
            int length2 = stringBuffer.length();
            if (str != null) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(B4(str));
                stringBuffer2.append(" <\n");
                stringBuffer.append("  ");
            }
            Class<?> cls = obj.getClass();
            for (Field field : cls.getFields()) {
                int modifiers = field.getModifiers();
                String name = field.getName();
                if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                    Class<?> type = field.getType();
                    Object obj2 = field.get(obj);
                    if (!type.isArray() || type.getComponentType() == Byte.TYPE) {
                        n2(name, obj2, stringBuffer, stringBuffer2);
                    } else {
                        int length3 = obj2 == null ? 0 : Array.getLength(obj2);
                        for (int i3 = 0; i3 < length3; i3++) {
                            n2(name, Array.get(obj2, i3), stringBuffer, stringBuffer2);
                        }
                    }
                }
            }
            for (Method method : cls.getMethods()) {
                String name2 = method.getName();
                if (name2.startsWith("set")) {
                    String strSubstring = name2.substring(3);
                    try {
                        String strValueOf = String.valueOf(strSubstring);
                        if (((Boolean) cls.getMethod(strValueOf.length() != 0 ? "has".concat(strValueOf) : new String("has"), new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                            String strValueOf2 = String.valueOf(strSubstring);
                            n2(strSubstring, cls.getMethod(strValueOf2.length() != 0 ? "get".concat(strValueOf2) : new String("get"), new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                }
            }
            if (str != null) {
                stringBuffer.setLength(length2);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
        }
    }

    public static String n3(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(47);
        if (iIndexOf == -1) {
            throw new IllegalArgumentException(str.length() != 0 ? "Invalid mime type: ".concat(str) : new String("Invalid mime type: "));
        }
        return str.substring(0, iIndexOf);
    }

    public static String n4(String str) {
        int i = at2.a;
        return str == null ? "" : str;
    }

    public static void o(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(q0(str, obj));
        }
    }

    public static boolean o0(bd6 bd6Var) {
        bd6 bd6VarG = bd6Var != null ? bd6Var.U().G("__type__", null) : null;
        return bd6VarG != null && "server_timestamp".equals(bd6VarG.W());
    }

    public static MediationAdRequest o1(zzvq zzvqVar, boolean z) {
        HashSet hashSet = zzvqVar.i != null ? new HashSet(zzvqVar.i) : null;
        Date date = new Date(zzvqVar.f);
        int i = zzvqVar.h;
        return new MediationAdRequest(date, i != 1 ? i != 2 ? AdRequest.Gender.UNKNOWN : AdRequest.Gender.FEMALE : AdRequest.Gender.MALE, hashSet, z, zzvqVar.o);
    }

    public static final void o2(StringBuilder sb, int i, String str, Object obj) throws SecurityException {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                o2(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                o2(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(M2(k53.J((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof k53) {
            sb.append(": \"");
            sb.append(M2((k53) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof s63) {
            sb.append(" {");
            g2((s63) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i4 = i + 2;
        o2(sb, i4, "key", entry.getKey());
        o2(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
    }

    public static boolean o3() throws ClassNotFoundException {
        try {
            Class.forName("android.app.Application", false, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static double o4(ByteBuffer byteBuffer) {
        byteBuffer.get(new byte[4]);
        return ((((0 | ((r0[0] << 24) & (-16777216))) | ((r0[1] << 16) & 16711680)) | ((r0[2] << 8) & 65280)) | (r0[3] & 255)) / 65536.0d;
    }

    public static void p(boolean z, String str, Object obj, Object obj2) {
        if (!z) {
            throw new IllegalArgumentException(q0(str, obj, obj2));
        }
    }

    public static int p0(int i, int i2, float f) {
        return d8.e(d8.h(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    public static <T> h71<T> p1(gv1 gv1Var, ll2 ll2Var, zo2 zo2Var, t11 t11Var, c32<T> c32Var, md1 md1Var, hl2 hl2Var, bw1 bw1Var, g91 g91Var, Executor executor, uv1 uv1Var, nz1 nz1Var) {
        return new h71<>(gv1Var, ll2Var, zo2Var, t11Var, c32Var, md1Var, hl2Var, bw1Var, g91Var, executor, uv1Var, nz1Var);
    }

    public static final void p2(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i) {
        if (i < 0 || byteBuffer2.remaining() < i || byteBuffer3.remaining() < i || byteBuffer.remaining() < i) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        for (int i2 = 0; i2 < i; i2++) {
            byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
        }
    }

    public static int p3(String str) throws UnsupportedEncodingException {
        byte[] bytes;
        try {
            bytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        int length = bytes.length;
        int i = (length & (-4)) + 0;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 4) {
            int i4 = ((bytes[i3] & 255) | ((bytes[i3 + 1] & 255) << 8) | ((bytes[i3 + 2] & 255) << 16) | (bytes[i3 + 3] << 24)) * (-862048943);
            int i5 = i2 ^ (((i4 << 15) | (i4 >>> 17)) * 461845907);
            i2 = (((i5 >>> 19) | (i5 << 13)) * 5) - 430675100;
        }
        int i6 = length & 3;
        if (i6 == 1) {
            int i7 = ((bytes[i] & 255) | i) * (-862048943);
            i2 ^= ((i7 >>> 17) | (i7 << 15)) * 461845907;
        } else {
            if (i6 != 2) {
                i = i6 == 3 ? (bytes[i + 2] & 255) << 16 : 0;
            }
            i |= (bytes[i + 1] & 255) << 8;
            int i72 = ((bytes[i] & 255) | i) * (-862048943);
            i2 ^= ((i72 >>> 17) | (i72 << 15)) * 461845907;
        }
        int i8 = i2 ^ length;
        int i9 = (i8 ^ (i8 >>> 16)) * (-2048144789);
        int i10 = (i9 ^ (i9 >>> 13)) * (-1028477387);
        return i10 ^ (i10 >>> 16);
    }

    public static int p4(na4 na4Var, byte[] bArr, int i, int i2, w74 w74Var) throws IOException {
        int iN2 = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iN2 = N2(i3, bArr, iN2, w74Var);
            i3 = w74Var.a;
        }
        int i4 = iN2;
        if (i3 < 0 || i3 > i2 - i4) {
            throw l94.a();
        }
        Object objA = na4Var.a();
        int i5 = i3 + i4;
        na4Var.h(objA, bArr, i4, i5, w74Var);
        na4Var.c(objA);
        w74Var.c = objA;
        return i5;
    }

    public static void q(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static String q0(String str, Object... objArr) {
        int iIndexOf;
        String strValueOf;
        String strValueOf2 = String.valueOf(str);
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            try {
                strValueOf = String.valueOf(obj);
            } catch (Exception e) {
                String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str2, (Throwable) e);
                strValueOf = "<" + str2 + " threw " + e.getClass().getName() + ">";
            }
            objArr[i2] = strValueOf;
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf2.length());
        int i3 = 0;
        while (i < objArr.length && (iIndexOf = strValueOf2.indexOf("%s", i3)) != -1) {
            sb.append((CharSequence) strValueOf2, i3, iIndexOf);
            sb.append(objArr[i]);
            i3 = iIndexOf + 2;
            i++;
        }
        sb.append((CharSequence) strValueOf2, i3, strValueOf2.length());
        if (i < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static sf1 q1(t71 t71Var) {
        return new sf1(t71Var, ms0.f);
    }

    public static void q2(ECPoint eCPoint, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger bigIntegerQ1 = Q1(ellipticCurve);
        BigInteger affineX = eCPoint.getAffineX();
        BigInteger affineY = eCPoint.getAffineY();
        if (affineX == null || affineY == null) {
            throw new GeneralSecurityException("point is at infinity");
        }
        if (affineX.signum() == -1 || affineX.compareTo(bigIntegerQ1) >= 0) {
            throw new GeneralSecurityException("x is out of range");
        }
        if (affineY.signum() == -1 || affineY.compareTo(bigIntegerQ1) >= 0) {
            throw new GeneralSecurityException("y is out of range");
        }
        if (!affineY.multiply(affineY).mod(bigIntegerQ1).equals(affineX.multiply(affineX).add(ellipticCurve.getA()).multiply(affineX).add(ellipticCurve.getB()).mod(bigIntegerQ1))) {
            throw new GeneralSecurityException("Point is not on curve");
        }
    }

    public static int q3(int i) {
        if (i == 1) {
            return 32;
        }
        if (i == 2) {
            return 64;
        }
        throw new IllegalArgumentException(jo.M(44, "Unknown content digest algorthm: ", i));
    }

    public static long q4(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static void r(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static float r0(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    public static <AdT> c32<AdT> r1(zo2 zo2Var, v22 v22Var, ba1 ba1Var, hq2 hq2Var, jq2 jq2Var, k61<AdT> k61Var, Executor executor, ScheduledExecutorService scheduledExecutorService, nz1 nz1Var) {
        return new c32<>(zo2Var, v22Var, ba1Var, hq2Var, jq2Var, k61Var, executor, scheduledExecutorService, nz1Var);
    }

    public static void r2(List<String> list, e60<String> e60Var) {
        String strA = e60Var.a();
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        list.add(strA);
    }

    public static int r3(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    public static boolean r4(byte b2) {
        return b2 >= 0;
    }

    public static void s(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void s0(String str) {
        if (Log.isLoggable("FIAM.Display", 3)) {
            Log.d("FIAM.Display", str);
        }
    }

    public static zzdwt s1(Context context, kd3 kd3Var, String str, String str2, String str3, pq2 pq2Var) throws InterruptedException {
        zzdwt zzdwtVarPoll;
        yq2 yq2Var = new yq2(context, kd3Var, str, str2, pq2Var);
        try {
            zzdwtVarPoll = yq2Var.e.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            yq2Var.c(2009, yq2Var.h, e);
            zzdwtVarPoll = null;
        }
        yq2Var.c(3004, yq2Var.h, null);
        if (zzdwtVarPoll != null) {
            if (zzdwtVarPoll.g == 7) {
                pq2.d = uc1.c.DISABLED;
            } else {
                pq2.d = uc1.c.ENABLED;
            }
        }
        return zzdwtVarPoll == null ? yq2.b() : zzdwtVarPoll;
    }

    public static <T> void s2(AtomicReference<T> atomicReference, ei2<T> ei2Var) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            ei2Var.a(t);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public static int s3(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static final String s4(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    public static void t(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void t0(String str) {
        s0("============ " + str + " ============");
    }

    @Deprecated
    public static vw2 t1(dx2 dx2Var) throws GeneralSecurityException {
        byte[] bArrArray;
        px2.f(new kz2());
        h23 h23Var = h23.ENABLED;
        kx2<?, ?> kx2Var = px2.f.get(vw2.class);
        Class<?> clsC = kx2Var == null ? null : kx2Var.c();
        if (clsC == null) {
            String name = vw2.class.getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        }
        m23 m23Var = dx2Var.a;
        int i = tx2.a;
        int iX = m23Var.x();
        int i2 = 0;
        boolean z = false;
        boolean z2 = true;
        for (m23.b bVar : m23Var.y()) {
            if (bVar.x() == h23Var) {
                if (!bVar.z()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(bVar.B())));
                }
                if (bVar.y() == y23.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(bVar.B())));
                }
                if (bVar.x() == h23.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(bVar.B())));
                }
                if (bVar.B() == iX) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z = true;
                }
                if (bVar.A().D() != g23.a.ASYMMETRIC_PUBLIC) {
                    z2 = false;
                }
                i2++;
            }
        }
        if (i2 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        hx2<?> hx2Var = new hx2<>(clsC);
        for (m23.b bVar2 : dx2Var.a.y()) {
            if (bVar2.x() == h23Var) {
                g23 g23VarA = bVar2.A();
                Object objB = px2.b(g23VarA.A(), g23VarA.B(), clsC);
                if (bVar2.x() != h23Var) {
                    throw new GeneralSecurityException("only ENABLED key is allowed");
                }
                int i3 = tw2.a[bVar2.y().ordinal()];
                if (i3 == 1 || i3 == 2) {
                    bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(bVar2.B()).array();
                } else if (i3 == 3) {
                    bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(bVar2.B()).array();
                } else {
                    if (i3 != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                    bArrArray = uw2.a;
                }
                ix2<P> ix2Var = new ix2<>(objB, bArrArray, bVar2.x(), bVar2.y(), bVar2.B());
                ArrayList arrayList = new ArrayList();
                arrayList.add(ix2Var);
                lx2 lx2Var = new lx2(ix2Var.a(), null);
                List<ix2<?>> listPut = hx2Var.a.put(lx2Var, Collections.unmodifiableList(arrayList));
                if (listPut != null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(listPut);
                    arrayList2.add(ix2Var);
                    hx2Var.a.put(lx2Var, Collections.unmodifiableList(arrayList2));
                }
                if (bVar2.B() != dx2Var.a.x()) {
                    continue;
                } else {
                    if (ix2Var.c != h23Var) {
                        throw new IllegalArgumentException("the primary entry has to be ENABLED");
                    }
                    List<ix2<?>> listEmptyList = hx2Var.a.get(new lx2(ix2Var.a(), null));
                    if (listEmptyList == null) {
                        listEmptyList = Collections.emptyList();
                    }
                    if (listEmptyList.isEmpty()) {
                        throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
                    }
                    hx2Var.b = ix2Var;
                }
            }
        }
        kx2<?, ?> kx2Var2 = px2.f.get(vw2.class);
        if (kx2Var2 == null) {
            String name2 = hx2Var.c.getName();
            throw new GeneralSecurityException(name2.length() != 0 ? "No wrapper found for ".concat(name2) : new String("No wrapper found for "));
        }
        if (kx2Var2.c().equals(hx2Var.c)) {
            return (vw2) kx2Var2.b(hx2Var);
        }
        String strValueOf = String.valueOf(kx2Var2.c());
        String strValueOf2 = String.valueOf(hx2Var.c);
        throw new GeneralSecurityException(jo.d(strValueOf2.length() + strValueOf.length() + 44, "Wrong input primitive class, expected ", strValueOf, ", got ", strValueOf2));
    }

    public static void t2(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long jR2 = R2(bArr, i);
        long jR22 = R2(bArr, i + 8);
        long jR23 = R2(bArr, i + 16);
        long jR24 = R2(bArr, i + 24);
        long j3 = j + jR2;
        long j4 = jR22 + j3 + jR23;
        long jRotateRight = Long.rotateRight(j4, 44) + Long.rotateRight(j2 + j3 + jR24, 21);
        jArr[0] = j4 + jR24;
        jArr[1] = jRotateRight + j3;
    }

    public static int t3(byte[] bArr, int i, g53 g53Var) throws e73 {
        int iE1 = e1(bArr, i, g53Var);
        int i2 = g53Var.a;
        if (i2 < 0) {
            throw e73.b();
        }
        if (i2 == 0) {
            g53Var.c = "";
            return iE1;
        }
        g53Var.c = new String(bArr, iE1, i2, u63.a);
        return iE1 + i2;
    }

    public static int t4(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static <T> void u(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static void u0(String str, float f) {
        s0(str + ": " + f);
    }

    public static v33 u1(w13 w13Var) throws GeneralSecurityException {
        int i = nz2.b[w13Var.ordinal()];
        if (i == 1) {
            return v33.NIST_P256;
        }
        if (i == 2) {
            return v33.NIST_P384;
        }
        if (i == 3) {
            return v33.NIST_P521;
        }
        String strValueOf = String.valueOf(w13Var);
        throw new GeneralSecurityException(jo.O(strValueOf.length() + 20, "unknown curve type: ", strValueOf));
    }

    public static void u2(byte[] bArr, long j, int i) {
        int i2 = 0;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & j);
            i2++;
            j >>= 8;
        }
    }

    public static int u3(byte[] bArr, int i, ow3 ow3Var) {
        int iG1 = g1(bArr, i, ow3Var);
        int i2 = ow3Var.a;
        if (i2 == 0) {
            ow3Var.c = "";
            return iG1;
        }
        ow3Var.c = new String(bArr, iG1, i2, ux3.a);
        return iG1 + i2;
    }

    public static double u4(ByteBuffer byteBuffer) {
        byteBuffer.get(new byte[4]);
        return ((((0 | ((r0[0] << 24) & (-16777216))) | ((r0[1] << 16) & 16711680)) | ((r0[2] << 8) & 65280)) | (r0[3] & 255)) / 1.073741824E9d;
    }

    public static <T> void v(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static void v0(String str, float f, float f2) {
        s0(str + ": (" + f + ", " + f2 + ")");
    }

    public static z33 v1(j13 j13Var) throws GeneralSecurityException {
        int i = nz2.c[j13Var.ordinal()];
        if (i == 1) {
            return z33.UNCOMPRESSED;
        }
        if (i == 2) {
            return z33.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        }
        if (i == 3) {
            return z33.COMPRESSED;
        }
        String strValueOf = String.valueOf(j13Var);
        throw new GeneralSecurityException(jo.O(strValueOf.length() + 22, "unknown point format: ", strValueOf));
    }

    public static /* synthetic */ boolean v2(byte b2) {
        return b2 >= 0;
    }

    public static int v3(byte[] bArr, int i, w74 w74Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            w74Var.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b2 = bArr[i3];
            i3 = i5;
        }
        w74Var.b = j2;
        return i3;
    }

    public static int v4(na4 na4Var, byte[] bArr, int i, int i2, int i3, w74 w74Var) throws IOException {
        fa4 fa4Var = (fa4) na4Var;
        Object objR = ((c94) fa4Var.e).r(4, null, null);
        int iA = fa4Var.A(objR, bArr, i, i2, i3, w74Var);
        fa4Var.c(objR);
        w74Var.c = objR;
        return iA;
    }

    public static int w(int i, int i2) {
        String strQ0;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strQ0 = q0("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new IllegalArgumentException(jo.g("negative size: ", i2));
            }
            strQ0 = q0("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strQ0);
    }

    public static void w0(String str) {
        if (Log.isLoggable("FIAM.Display", 4)) {
            Log.i("FIAM.Display", str);
        }
    }

    public static zzvh w1(dm2 dm2Var, zzvh zzvhVar) {
        if (dm2Var.equals(dm2.MEDIATION_SHOW_ERROR)) {
            if (((Integer) os3.j.f.a(y40.R4)).intValue() > 0) {
                return zzvhVar;
            }
        }
        return x1(dm2Var, null, zzvhVar);
    }

    public static boolean w2(o50 o50Var, m50 m50Var, String... strArr) {
        if (o50Var == null || m50Var == null || !o50Var.a) {
            return false;
        }
        o50Var.a(m50Var, zzr.zzlc().b(), strArr);
        return true;
    }

    public static Cursor w3(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = {"value"};
        String[] strArr2 = new String[1];
        if (i == 0) {
            strArr2[0] = "failed_requests";
        } else if (i == 1) {
            strArr2[0] = "total_requests";
        } else if (i == 2) {
            strArr2[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }

    public static gl1 w4(Context context, String str, String str2) throws InterruptedException {
        gl1 gl1VarPoll;
        try {
            gl1VarPoll = new xq2(context, str, str2).d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            gl1VarPoll = null;
        }
        return gl1VarPoll == null ? xq2.b() : gl1VarPoll;
    }

    public static Object x(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(jo.g("at index ", i));
    }

    public static void x0(View view, int i, int i2, int i3, int i4) {
        v0("\tdesired (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
        if (view.getVisibility() == 8) {
            i = 0;
            i2 = 0;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(i, i3), View.MeasureSpec.makeMeasureSpec(i2, i4));
        v0("\tactual (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzvh x1(defpackage.dm2 r6, java.lang.String r7, com.google.android.gms.internal.ads.zzvh r8) {
        /*
            if (r7 != 0) goto L46
            int[] r7 = defpackage.bm2.a
            int r0 = r6.ordinal()
            r7 = r7[r0]
            java.lang.String r0 = "No fill."
            switch(r7) {
                case 1: goto L44;
                case 2: goto L41;
                case 3: goto L3e;
                case 4: goto L3b;
                case 5: goto L39;
                case 6: goto L36;
                case 7: goto L33;
                case 8: goto L30;
                case 9: goto L2d;
                case 10: goto L2a;
                case 11: goto Lf;
                case 12: goto L15;
                case 13: goto Lf;
                case 14: goto L12;
                default: goto Lf;
            }
        Lf:
            java.lang.String r7 = "Internal error."
            goto L46
        L12:
            java.lang.String r7 = "Mismatch request IDs."
            goto L46
        L15:
            o40<java.lang.Integer> r7 = defpackage.y40.V4
            os3 r1 = defpackage.os3.j
            u40 r1 = r1.f
            java.lang.Object r7 = r1.a(r7)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            if (r7 > 0) goto L39
            java.lang.String r7 = "The mediation adapter did not return an ad."
            goto L46
        L2a:
            java.lang.String r7 = "The ad can not be shown when app is not in foreground."
            goto L46
        L2d:
            java.lang.String r7 = "The ad has already been shown."
            goto L46
        L30:
            java.lang.String r7 = "The ad is not ready."
            goto L46
        L33:
            java.lang.String r7 = "A mediation adapter failed to show the ad."
            goto L46
        L36:
            java.lang.String r7 = "App ID missing."
            goto L46
        L39:
            r2 = r0
            goto L47
        L3b:
            java.lang.String r7 = "Network error."
            goto L46
        L3e:
            java.lang.String r7 = "Invalid request: Invalid ad size."
            goto L46
        L41:
            java.lang.String r7 = "Invalid request: Invalid ad unit ID."
            goto L46
        L44:
            java.lang.String r7 = "Invalid request."
        L46:
            r2 = r7
        L47:
            com.google.android.gms.internal.ads.zzvh r7 = new com.google.android.gms.internal.ads.zzvh
            int[] r0 = defpackage.bm2.a
            int r1 = r6.ordinal()
            r0 = r0[r1]
            r1 = 0
            switch(r0) {
                case 1: goto L95;
                case 2: goto L95;
                case 3: goto L95;
                case 4: goto L92;
                case 5: goto L8f;
                case 6: goto L8a;
                case 7: goto L87;
                case 8: goto L92;
                case 9: goto L95;
                case 10: goto L8f;
                case 11: goto L97;
                case 12: goto L70;
                case 13: goto L97;
                case 14: goto L6b;
                default: goto L55;
            }
        L55:
            java.lang.AssertionError r7 = new java.lang.AssertionError
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r8 = r6.length()
            int r8 = r8 + 18
            java.lang.String r0 = "Unknown SdkError: "
            java.lang.String r6 = defpackage.jo.O(r8, r0, r6)
            r7.<init>(r6)
            throw r7
        L6b:
            r6 = 10
            r1 = 10
            goto L97
        L70:
            o40<java.lang.Integer> r6 = defpackage.y40.V4
            os3 r0 = defpackage.os3.j
            u40 r0 = r0.f
            java.lang.Object r6 = r0.a(r6)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            if (r6 > 0) goto L8f
            r6 = 9
            r1 = 9
            goto L97
        L87:
            r6 = 4
            r1 = 4
            goto L97
        L8a:
            r6 = 8
            r1 = 8
            goto L97
        L8f:
            r6 = 3
            r1 = 3
            goto L97
        L92:
            r6 = 2
            r1 = 2
            goto L97
        L95:
            r6 = 1
            r1 = 1
        L97:
            r5 = 0
            java.lang.String r3 = "com.google.android.gms.ads"
            r0 = r7
            r4 = r8
            r0.<init>(r1, r2, r3, r4, r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c50.x1(dm2, java.lang.String, com.google.android.gms.internal.ads.zzvh):com.google.android.gms.internal.ads.zzvh");
    }

    public static boolean x2(File file, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.flush();
                try {
                    fileOutputStream2.close();
                    return true;
                } catch (IOException unused) {
                    return true;
                }
            } catch (IOException unused2) {
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream == null) {
                    return false;
                }
                try {
                    fileOutputStream.close();
                    return false;
                } catch (IOException unused3) {
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static <AppOpenAdRequestComponent extends l91<AppOpenAd>, AppOpenAd extends f61> li2<AppOpenAdRequestComponent, AppOpenAd> x3(Context context, mm2 mm2Var, gn2 gn2Var) {
        if (((Integer) os3.j.f.a(y40.g4)).intValue() <= 0) {
            return new ci2();
        }
        fn2 fn2VarA = gn2Var.a(ym2.AppOpen, context, mm2Var, new th2(new oh2()));
        gi2 gi2Var = new gi2(new ci2());
        sm2 sm2Var = fn2VarA.a;
        zv2 zv2Var = ms0.a;
        return new ph2(gi2Var, new yh2(sm2Var, zv2Var), fn2VarA.b, zv2Var);
    }

    public static final String x4(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    public static <T> T y(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void y0(View view, int i, int i2) {
        x0(view, i, i2, Integer.MIN_VALUE, 1073741824);
    }

    public static zzvh y1(Throwable th, nz1 nz1Var) {
        zzvh zzvhVar;
        zzvh zzvhVarL4 = l4(th);
        int i = zzvhVarL4.e;
        if ((i == 3 || i == 0) && (zzvhVar = zzvhVarL4.h) != null && !zzvhVar.g.equals(MobileAds.ERROR_DOMAIN)) {
            zzvhVarL4.h = null;
        }
        if (((Boolean) os3.j.f.a(y40.U4)).booleanValue() && nz1Var != null) {
            zzvhVarL4.i = new t91(nz1Var.c, "", nz1Var);
        }
        return zzvhVarL4;
    }

    public static boolean y2(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static String y3(int i, int i2, String str) {
        if (i < 0) {
            return a3("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return a3("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(jo.M(26, "negative size: ", i2));
    }

    public static int y4(int i, byte[] bArr, int i2, int i3, i94<?> i94Var, w74 w74Var) {
        d94 d94Var = (d94) i94Var;
        int iI1 = i1(bArr, i2, w74Var);
        d94Var.l(w74Var.a);
        while (iI1 < i3) {
            int iI12 = i1(bArr, iI1, w74Var);
            if (i != w74Var.a) {
                break;
            }
            iI1 = i1(bArr, iI12, w74Var);
            d94Var.l(w74Var.a);
        }
        return iI1;
    }

    public static <T> T z(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(q0(str, obj));
    }

    public static void z0(View view, int i, int i2) {
        x0(view, i, i2, 1073741824, Integer.MIN_VALUE);
    }

    public static <T> g74<T> z1(g74<T> g74Var) {
        return ((g74Var instanceof i74) || (g74Var instanceof h74)) ? g74Var : g74Var instanceof Serializable ? new h74(g74Var) : new i74(g74Var);
    }

    public static boolean z2(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                } catch (PatternSyntaxException e) {
                    or0 or0VarZzkz = zzr.zzkz();
                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "RtbAdapterMap.hasAtleastOneRegexMatch");
                }
                if (Pattern.compile(jSONArray.optString(i)).matcher(str).lookingAt()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String z3(sw3 sw3Var) {
        String str;
        zz3 zz3Var = new zz3(sw3Var);
        StringBuilder sb = new StringBuilder(sw3Var.size());
        for (int i = 0; i < zz3Var.a.size(); i++) {
            int iO = zz3Var.a.o(i);
            if (iO == 34) {
                str = "\\\"";
            } else if (iO == 39) {
                str = "\\'";
            } else if (iO != 92) {
                switch (iO) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (iO < 32 || iO > 126) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((iO >>> 6) & 3) + 48));
                            sb.append((char) (((iO >>> 3) & 7) + 48));
                            iO = (iO & 7) + 48;
                        }
                        sb.append((char) iO);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static int z4(byte[] bArr, int i, i94<?> i94Var, w74 w74Var) throws IOException {
        d94 d94Var = (d94) i94Var;
        int iI1 = i1(bArr, i, w74Var);
        int i2 = w74Var.a + iI1;
        while (iI1 < i2) {
            iI1 = i1(bArr, iI1, w74Var);
            d94Var.l(w74Var.a);
        }
        if (iI1 == i2) {
            return iI1;
        }
        throw l94.a();
    }
}
