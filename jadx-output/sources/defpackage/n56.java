package defpackage;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import android.webkit.MimeTypeMap;
import androidx.appcompat.app.AlertController;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.SkuDetails;
import com.michaelflisar.gdprdialog.R$string;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.provider.ReaderProvider;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.service.DownloadService;
import com.noinnion.android.greader.service.FeedService;
import com.noinnion.android.greader.service.TtsService;
import com.noinnion.android.greader.ui.home.HomeActivity;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;
import com.noinnion.android.greader.ui.login.LoginActivity;
import com.noinnion.android.greader.ui.media.MusicActivity;
import com.noinnion.android.greader.ui.media.MusicService;
import com.noinnion.android.greader.ui.premium.PremiumActivity;
import com.noinnion.android.greader.ui.setting.SendLogActivity;
import com.noinnion.android.greader.ui.tts.TtsActivity;
import com.noinnion.android.greader.ui.widget.WidgetUpdateReceiver;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.jj6;
import defpackage.qi6;
import defpackage.rk7;
import defpackage.sf5;
import defpackage.sj7;
import defpackage.t18;
import defpackage.x47;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import kotlinx.coroutines.CoroutineExceptionHandler;
import net.simonvt.menudrawer.MenuDrawer;
import okhttp3.OkHttpClient;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class n56 {
    public static volatile tc7<? super Throwable> a;

    public static long[] A(List<Long> list) {
        int size = list.size();
        long[] jArr = new long[size];
        Iterator<Long> it = list.iterator();
        for (int i = 0; i < size; i++) {
            jArr[i] = it.next().longValue();
        }
        return jArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E extends rk7.a> E A0(rk7.a aVar, rk7.b<E> bVar) {
        im7.e(bVar, "key");
        if (im7.a(aVar.getKey(), bVar)) {
            return aVar;
        }
        return null;
    }

    public static void A1(Activity activity, File file) {
        if (!file.exists()) {
            X1(activity, activity.getText(R.string.download_not_found));
            return;
        }
        try {
            new Intent().setAction("android.intent.action.VIEW");
            String str = file.getName().split("\\.")[r0.length - 1];
            B1(activity, file, MimeTypeMap.getSingleton().getMimeTypeFromExtension(str != null ? str.toLowerCase() : null));
        } catch (Exception e) {
            X1(activity, e.getLocalizedMessage());
        }
    }

    public static List<w87> A2(List<Map<String, ?>> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map<String, ?> map : list) {
            if (map.size() != 1) {
                StringBuilder sbZ = jo.z("There are ");
                sbZ.append(map.size());
                sbZ.append(" fields in a LoadBalancingConfig object. Exactly one is expected. Config=");
                sbZ.append(map);
                throw new RuntimeException(sbZ.toString());
            }
            String key = map.entrySet().iterator().next().getKey();
            arrayList.add(new w87(key, m77.f(map, key)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static long[] B(Set<Long> set) {
        int size = set.size();
        long[] jArr = new long[size];
        Iterator<Long> it = set.iterator();
        for (int i = 0; i < size; i++) {
            jArr[i] = it.next().longValue();
        }
        return jArr;
    }

    public static int B0(int i, int i2) {
        return (i & 16777215) | (((i2 * Base64.BASELENGTH) / 100) << 24);
    }

    public static void B1(Activity activity, File file, String str) {
        if (str == null || !str.startsWith("audio")) {
            try {
                activity.startActivity(new Intent("android.intent.action.VIEW").setDataAndType(Uri.fromFile(file), str));
                return;
            } catch (Exception e) {
                X1(activity, e.getLocalizedMessage());
                return;
            }
        }
        Intent intent = new Intent(activity, (Class<?>) MusicService.class);
        intent.setAction("com.noinnion.android.greader.reader.action.PATH");
        intent.setData(Uri.fromFile(file));
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            activity.startForegroundService(intent);
        } else {
            activity.startService(intent);
        }
        activity.startActivity(new Intent(activity, (Class<?>) MusicActivity.class));
    }

    public static final void B2(View view, Boolean bool) {
        im7.e(view, "$this$visibleOrGone");
        if (im7.a(bool, Boolean.TRUE)) {
            im7.e(view, "$this$visible");
            view.setVisibility(0);
        } else {
            im7.e(view, "$this$gone");
            view.setVisibility(8);
        }
    }

    public static String C(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder(Math.max(16, inputStream.available()));
        char[] cArr = new char[RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT];
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
            while (true) {
                int i = inputStreamReader.read(cArr);
                if (i <= 0) {
                    inputStream.close();
                    return sb.toString().trim();
                }
                sb.append(cArr, 0, i);
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    public static int C0(View view) {
        Interpolator interpolator = MenuDrawer.b0;
        return (int) (view.getTranslationY() + view.getBottom());
    }

    public static void C1(Activity activity, String str, String str2) {
        if (str2 == null || !str2.startsWith("audio")) {
            try {
                activity.startActivity(new Intent("android.intent.action.VIEW").setDataAndType(Uri.parse(str), str2));
                return;
            } catch (Exception e) {
                X1(activity, e.getLocalizedMessage());
                return;
            }
        }
        Intent intent = new Intent(activity, (Class<?>) MusicService.class);
        intent.setAction("com.noinnion.android.greader.reader.action.URL");
        intent.setData(Uri.parse(str));
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            activity.startForegroundService(intent);
        } else {
            activity.startService(intent);
        }
        activity.startActivity(new Intent(activity, (Class<?>) MusicActivity.class));
    }

    public static <T> Class<T> C2(Class<T> cls) {
        return cls == Integer.TYPE ? Integer.class : cls == Float.TYPE ? Float.class : cls == Byte.TYPE ? Byte.class : cls == Double.TYPE ? Double.class : cls == Long.TYPE ? Long.class : cls == Character.TYPE ? Character.class : cls == Boolean.TYPE ? Boolean.class : cls == Short.TYPE ? Short.class : cls == Void.TYPE ? Void.class : cls;
    }

    public static String D(InputStream inputStream, String str) throws IOException {
        int i;
        v18[] v18VarArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr);
            i = 0;
            if (i2 <= 0) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
        byteArrayOutputStream.flush();
        if (str == null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            t18 t18Var = new t18(null);
            while (true) {
                try {
                    int i3 = byteArrayInputStream.read(bArr);
                    if (i3 <= 0 || t18Var.b) {
                        break;
                    }
                    t18Var.a(bArr, 0, i3);
                } catch (Throwable th) {
                    byteArrayInputStream.close();
                    throw th;
                }
            }
            byteArrayInputStream.close();
            if (t18Var.d) {
                if (t18Var.f != null) {
                    t18Var.b = true;
                } else if (t18Var.a == t18.a.HIGHBYTE) {
                    float f = 0.0f;
                    int i4 = 0;
                    while (true) {
                        v18VarArr = t18Var.g;
                        if (i >= v18VarArr.length) {
                            break;
                        }
                        float fB = v18VarArr[i].b();
                        if (fB > f) {
                            f = fB;
                            i4 = i;
                        }
                        i++;
                    }
                    if (f > 0.2f) {
                        t18Var.f = v18VarArr[i4].a();
                    }
                }
            }
            String str2 = t18Var.f;
            t18Var.b();
            str = str2;
        }
        if (str == null) {
            str = "UTF-8";
        }
        return byteArrayOutputStream.toString(str);
    }

    public static File D0(Context context, boolean z) throws IOException {
        String externalStorageState = "";
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (IncompatibleClassChangeError | NullPointerException unused) {
        }
        File cacheDir = null;
        if (z && "mounted".equals(externalStorageState)) {
            if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
                if (file.exists()) {
                    cacheDir = file;
                } else if (file.mkdirs()) {
                    try {
                        new File(file, ".nomedia").createNewFile();
                    } catch (IOException unused2) {
                        p07.d(4, null, "Can't create \".nomedia\" file in application external cache directory", new Object[0]);
                    }
                    cacheDir = file;
                } else {
                    p07.e("Unable to create external cache directory", new Object[0]);
                }
            }
        }
        if (cacheDir == null) {
            cacheDir = context.getCacheDir();
        }
        if (cacheDir != null) {
            return cacheDir;
        }
        StringBuilder sbZ = jo.z("/data/data/");
        sbZ.append(context.getPackageName());
        sbZ.append("/cache/");
        String string = sbZ.toString();
        p07.e("Can't define system cache directory! '%s' will be used.", string);
        return new File(string);
    }

    public static final void D1(StringBuilder sb, int i, String str, Object obj) throws SecurityException {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                D1(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                D1(sb, i, str, (Map.Entry) it2.next());
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
            qi6 qi6Var = qi6.f;
            sb.append(w0(new qi6.h(((String) obj).getBytes(jj6.a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof qi6) {
            sb.append(": \"");
            sb.append(w0((qi6) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof gj6) {
            sb.append(" {");
            G1((gj6) obj, sb, i + 2);
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
        D1(sb, i4, "key", entry.getKey());
        D1(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
    }

    public static boolean E(InputStream inputStream, OutputStream outputStream, o07 o07Var, int i) throws IOException {
        int iAvailable = inputStream.available();
        if (iAvailable <= 0) {
            iAvailable = 512000;
        }
        byte[] bArr = new byte[i];
        if (T1(o07Var, 0, iAvailable)) {
            return false;
        }
        int i2 = 0;
        do {
            int i3 = inputStream.read(bArr, 0, i);
            if (i3 == -1) {
                outputStream.flush();
                return true;
            }
            outputStream.write(bArr, 0, i3);
            i2 += i3;
        } while (!T1(o07Var, i2, iAvailable));
        return false;
    }

    public static String E0(String str, String str2) {
        if (str == null) {
            str = Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        StringBuilder sbZ = jo.z(str);
        StringBuilder sbZ2 = jo.z("/gReader/cache/");
        sbZ2.append(str2.hashCode());
        sbZ.append(sbZ2.toString());
        return sbZ.toString();
    }

    public static long E1(AtomicLong atomicLong, long j) {
        long j2;
        long j3;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j3 = j2 - j;
            if (j3 < 0) {
                z1(new IllegalStateException(jo.j("More produced than requested: ", j3)));
                j3 = 0;
            }
        } while (!atomicLong.compareAndSet(j2, j3));
        return j3;
    }

    public static sf5<?> F(String str, String str2) {
        final va6 va6Var = new va6(str, str2);
        sf5.b bVarA = sf5.a(za6.class);
        bVarA.d = 1;
        bVarA.d(new wf5(va6Var) { // from class: rf5
            public final Object a;

            {
                this.a = va6Var;
            }

            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return this.a;
            }
        });
        return bVarA.b();
    }

    public static final String F0(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static void F1(Context context, String str) {
        if (context == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = "all";
        }
        long[] jArrT = ep6.t(context, str, 1000, true);
        if (jArrT == null || jArrT.length == 0) {
            return;
        }
        if (!TtsService.b()) {
            Intent intent = new Intent(context, (Class<?>) TtsActivity.class);
            intent.putExtra("ttsInitVoices", true);
            intent.putExtra("itemIds", jArrT);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return;
        }
        Intent intent2 = new Intent(context, (Class<?>) TtsService.class);
        intent2.setAction("com.noinnion.android.greader.reader.action.APPEND");
        intent2.putExtra("itemIds", jArrT);
        intent2.addFlags(268435456);
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent2);
        } else {
            context.startService(intent2);
        }
    }

    public static p77 G() {
        return p87.e == null ? new p87() : new l57();
    }

    public static String G0(Context context, Collection<String> collection) {
        String string = context.getString(R$string.gdpr_list_seperator);
        String string2 = context.getString(R$string.gdpr_last_list_seperator);
        String strO = "";
        int i = 0;
        for (String str : collection) {
            strO = i == 0 ? str : jo.o(strO, i == collection.size() + (-1) ? string2 : string, str);
            i++;
        }
        return strO;
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0226  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void G1(defpackage.ak6 r13, java.lang.StringBuilder r14, int r15) throws java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n56.G1(ak6, java.lang.StringBuilder, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0249  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String H(android.content.Context r16, java.lang.String r17, defpackage.ow6 r18, defpackage.pw6 r19, defpackage.kw6 r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n56.H(android.content.Context, java.lang.String, ow6, pw6, kw6, int, boolean):java.lang.String");
    }

    public static int H0(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
        if (networkInfo != null) {
            NetworkInfo.State state = networkInfo.getState();
            if (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING) {
                return 1;
            }
            if (networkInfo.getDetailedState() == NetworkInfo.DetailedState.BLOCKED) {
                return -1;
            }
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(6);
        if (networkInfo2 != null) {
            NetworkInfo.State state2 = networkInfo2.getState();
            if (state2 == NetworkInfo.State.CONNECTED || state2 == NetworkInfo.State.CONNECTING) {
                return 1;
            }
            if (networkInfo2.getDetailedState() == NetworkInfo.DetailedState.BLOCKED) {
                return -1;
            }
        }
        NetworkInfo networkInfo3 = connectivityManager.getNetworkInfo(1);
        if (networkInfo3 != null) {
            NetworkInfo.State state3 = networkInfo3.getState();
            if (state3 == NetworkInfo.State.CONNECTED || state3 == NetworkInfo.State.CONNECTING) {
                return 2;
            }
            if (networkInfo3.getDetailedState() == NetworkInfo.DetailedState.BLOCKED) {
                return -1;
            }
        }
        return 0;
    }

    public static void H1(Context context, boolean z) {
        if (z) {
            yd.a(context).c(new Intent("com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI"));
        } else {
            yd.a(context).c(new Intent("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED"));
        }
        Intent intent = new Intent(context, (Class<?>) WidgetUpdateReceiver.class);
        intent.setAction("com.noinnion.android.greader.reader.action.WIDGET_UPDATE");
        context.sendBroadcast(intent);
    }

    public static String I(Context context, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("<!DOCTYPE HTML><html lang=\"en\"><head>    <title>gReader</title>    <meta charset=\"UTF-8\">    <meta name=\"viewport\" content=\"width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;\"/>    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" media=\"screen\"/></head><body><div id=\"error\" class=\"container\">    <h1>:-(</h1>    <h3 class=\"title\">");
        sb.append(str2);
        sb.append("</h3>    <ul class=\"message\">        <li><a href=\"");
        sb.append(str3);
        sb.append("\">");
        jo.J(sb, str3, "</a></li>    </ul>    <h6 class=\"center\">", str, "</h6>    <p class=\"button\">        <a href=\"");
        sb.append(str3);
        sb.append("\">");
        sb.append(context.getString(com.noinnion.android.reader.R$string.txt_try_again));
        sb.append("</a>    </p></div></body>");
        return sb.toString();
    }

    public static String I0(String str, String str2) {
        String string;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(dn6.c);
        if (TextUtils.isEmpty(str2)) {
            string = "";
        } else {
            StringBuilder sbZ = jo.z("id");
            sbZ.append(str2.hashCode());
            sbZ.append("_");
            string = sbZ.toString();
        }
        sb.append(string);
        sb.append(J0(str, true));
        return sb.toString();
    }

    public static void I1(Context context, boolean z, boolean z2) {
        if (z) {
            yd.a(context).c(new Intent("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED"));
        }
        if (z2) {
            Intent intent = new Intent(context, (Class<?>) WidgetUpdateReceiver.class);
            intent.setAction("com.noinnion.android.greader.reader.action.WIDGET_UPDATE");
            context.sendBroadcast(intent);
        }
    }

    public static Executor J(int i, int i2, wz6 wz6Var) {
        return new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, (BlockingQueue<Runnable>) (wz6Var == wz6.LIFO ? new yz6() : new LinkedBlockingQueue()), new ez6(i2, "uil-pool-"));
    }

    public static String J0(String str, boolean z) {
        int iLastIndexOf = str.lastIndexOf(47);
        if (z) {
            int iIndexOf = str.indexOf(63, iLastIndexOf);
            return iIndexOf == -1 ? str.substring(iLastIndexOf + 1) : str.substring(iLastIndexOf + 1, iIndexOf);
        }
        int iIndexOf2 = str.indexOf(46, iLastIndexOf);
        return iIndexOf2 == -1 ? str.substring(iLastIndexOf + 1) : str.substring(iLastIndexOf + 1, iIndexOf2);
    }

    public static final <T> void J1(jp7<? super T> jp7Var, pk7<? super T> pk7Var, int i) {
        Object objB;
        Object objF = jp7Var.f();
        uo7 uo7Var = (uo7) (!(objF instanceof uo7) ? null : objF);
        Throwable thA = uo7Var != null ? uo7Var.a : null;
        if (thA == null) {
            thA = null;
        } else if (fp7.b && (pk7Var instanceof wk7)) {
            thA = xq7.a(thA, (wk7) pk7Var);
        }
        Object objK = thA != null ? K(thA) : jp7Var.d(objF);
        if (i == 0) {
            pk7Var.resumeWith(objK);
            return;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException(jo.g("Invalid mode ", i).toString());
            }
            Objects.requireNonNull(pk7Var, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
            hp7 hp7Var = (hp7) pk7Var;
            objB = k.b(hp7Var.getContext(), hp7Var.j);
            try {
                hp7Var.l.resumeWith(objK);
                return;
            } finally {
            }
        }
        if (!(pk7Var instanceof hp7)) {
            pk7Var.resumeWith(objK);
            return;
        }
        hp7 hp7Var2 = (hp7) pk7Var;
        Throwable thA2 = sj7.a(objK);
        boolean z = false;
        Object uo7Var2 = thA2 == null ? objK : new uo7(thA2, false, 2);
        if (hp7Var2.k.w(hp7Var2.getContext())) {
            hp7Var2.h = uo7Var2;
            hp7Var2.g = 1;
            hp7Var2.k.t(hp7Var2.getContext(), hp7Var2);
            return;
        }
        iq7 iq7Var = iq7.b;
        np7 np7VarA = iq7.a();
        if (np7VarA.I()) {
            hp7Var2.h = uo7Var2;
            hp7Var2.g = 1;
            np7VarA.E(hp7Var2);
            return;
        }
        np7VarA.F(true);
        try {
            yp7 yp7Var = (yp7) hp7Var2.getContext().c(yp7.d);
            if (yp7Var != null && !yp7Var.isActive()) {
                hp7Var2.resumeWith(K(yp7Var.g()));
                z = true;
            }
            if (!z) {
                rk7 context = hp7Var2.getContext();
                objB = k.b(context, hp7Var2.j);
                try {
                    hp7Var2.l.resumeWith(objK);
                    k.a(context, objB);
                } finally {
                }
            }
            while (np7VarA.L()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final Object K(Throwable th) {
        im7.e(th, "exception");
        return new sj7.a(th);
    }

    public static String K0(String str) {
        StringBuilder sbZ = jo.z("http://googleweblight.com/i?u=");
        sbZ.append(u0(str));
        return sbZ.toString();
    }

    public static int K1(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public static OkHttpClient L() {
        return M(20000);
    }

    public static final String L0(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static void L1(Context context, String str) {
        if (FeedService.y != null) {
            Intent intent = new Intent("com.noinnion.android.greader.reader.action.START_START_DOWNLOADING");
            intent.putExtra("item_ids", str);
            intent.putExtra("save_page", true);
            yd.a(context).c(intent);
            return;
        }
        Intent intent2 = new Intent(context, (Class<?>) FeedService.class);
        intent2.putExtra("item_ids", str);
        intent2.putExtra("save_page", true);
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent2);
        } else {
            context.startService(intent2);
        }
    }

    public static OkHttpClient M(int i) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        long j = i;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(j, timeUnit).writeTimeout(j, timeUnit).readTimeout(j, timeUnit).followRedirects(true).followSslRedirects(true);
        return builder.build();
    }

    public static File M0(Context context, String str) throws IOException {
        File fileD0 = D0(context, true);
        File file = new File(fileD0, str);
        return (file.exists() || file.mkdir()) ? file : fileD0;
    }

    public static void M1(Context context) {
        im7.e(context, "c");
        yo6.d(context);
        xo6.a(context);
    }

    public static void N(Context context, long j, String str) {
        String str2;
        String string;
        int i;
        String str3;
        try {
            if (j > 0) {
                ip6 ip6VarC = ip6.c(context, j, true);
                if (ip6VarC == null) {
                    return;
                }
                str2 = ip6VarC.f;
                string = ip6VarC.h;
                i = R.drawable.ic_feed_default;
                str3 = str2;
            } else {
                int i2 = R.drawable.ic_tag_all;
                if (str != null) {
                    lp6 lp6VarB = lp6.b(context, str, true);
                    if (lp6VarB == null) {
                        return;
                    }
                    String str4 = lp6VarB.f;
                    String string2 = lp6VarB.h(context).toString();
                    int i3 = lp6VarB.g;
                    if (i3 != 1) {
                        switch (i3) {
                            case 9:
                                i2 = R.drawable.ic_tag_search;
                                break;
                            case 10:
                                i2 = R.drawable.ic_tag_label;
                                break;
                            case 11:
                                i2 = R.drawable.ic_tag_folder;
                                break;
                        }
                    } else {
                        i2 = R.drawable.ic_tag_star;
                    }
                    str2 = str4;
                    i = i2;
                    string = string2;
                } else {
                    str2 = "all";
                    string = context.getString(R.string.label_all);
                    i = R.drawable.ic_tag_all;
                }
                str3 = null;
            }
            if (str2 != null && string != null) {
                Intent intent = new Intent(context, (Class<?>) (lw6.n(context, iw6.a0(context)) ? HomeTabletActivity.class : HomeActivity.class));
                intent.setAction("android.intent.action.MAIN");
                intent.putExtra("force_recreate", true);
                if (str3 != null) {
                    intent.putExtra("subUid", str3);
                }
                if (str != null) {
                    intent.putExtra("tagUid", str);
                }
                intent.addFlags(268435456);
                intent.addFlags(67108864);
                cy6 cy6Var = new cy6();
                im7.e(str2, "id");
                im7.e(string, "label");
                im7.e(intent, "intent");
                cy6Var.a.add(new by6(str2, string, i, intent));
                cy6Var.a(context);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final <T> Class<T> N0(hn7<T> hn7Var) {
        im7.e(hn7Var, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((dm7) hn7Var).b();
        if (!cls.isPrimitive()) {
            return cls;
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                }
                break;
            case 104431:
                if (name.equals("int")) {
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                }
                break;
        }
        return cls;
    }

    public static void N1(Context context, String str, int i) {
        if (iw6.f(context, "service_tesla_unread", false)) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("tag", str);
                contentValues.put("count", Integer.valueOf(i));
                context.getContentResolver().insert(Uri.parse("content://com.teslacoilsw.notifier/unread_count"), contentValues);
            } catch (IllegalArgumentException unused) {
                iw6.S(context, "service_tesla_unread", false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String O(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (Exception unused) {
            return str;
        }
    }

    public static int O0(View view) {
        Interpolator interpolator = MenuDrawer.b0;
        return (int) (view.getTranslationX() + view.getLeft());
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void O1(android.app.Activity r7, defpackage.ap6 r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n56.O1(android.app.Activity, ap6, boolean):void");
    }

    public static int P(byte[] bArr, int i, ni6 ni6Var) throws kj6 {
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a;
        if (i2 < 0) {
            throw kj6.f();
        }
        if (i2 > bArr.length - iI0) {
            throw kj6.h();
        }
        if (i2 == 0) {
            ni6Var.c = qi6.f;
            return iI0;
        }
        ni6Var.c = qi6.o(bArr, iI0, i2);
        return iI0 + i2;
    }

    public static String P0(URL url, String str) throws MalformedURLException {
        if (TextUtils.isEmpty(str)) {
            throw new MalformedURLException();
        }
        if (!str.equals("") && str.startsWith("?")) {
            str = jo.n(url.toString().contains("?") ? url.toString().substring(0, url.toString().indexOf("?")) : url.toString(), str);
        } else if (str.startsWith("//")) {
            str = url.getProtocol() + ":" + str;
        }
        return new URL(url, str).toString();
    }

    public static void P1(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.SUBJECT", str);
            intent.putExtra("android.intent.extra.TEXT", str2);
            Intent intentCreateChooser = Intent.createChooser(intent, context.getText(com.noinnion.android.R$string.txt_send_to));
            intentCreateChooser.setFlags(268435456);
            context.startActivity(intentCreateChooser);
        } catch (Exception e) {
            X1(context, e.getLocalizedMessage());
        }
    }

    public static int Q(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static Set<x47.b> Q0(Map<String, ?> map, String str) {
        x47.b bVarValueOf;
        List<?> listB = m77.b(map, str);
        if (listB == null) {
            return null;
        }
        EnumSet enumSetNoneOf = EnumSet.noneOf(x47.b.class);
        for (Object obj : listB) {
            if (obj instanceof Double) {
                Double d = (Double) obj;
                int iIntValue = d.intValue();
                sd5.a(((double) iIntValue) == d.doubleValue(), "Status code %s is not integral", obj);
                bVarValueOf = x47.d(iIntValue).a;
                sd5.a(bVarValueOf.e == d.intValue(), "Status code %s is not valid", obj);
            } else {
                if (!(obj instanceof String)) {
                    throw new td5("Can not convert status code " + obj + " to Status.Code, because its type is " + obj.getClass());
                }
                try {
                    bVarValueOf = x47.b.valueOf((String) obj);
                } catch (IllegalArgumentException e) {
                    throw new td5("Status code " + obj + " is not valid", e);
                }
            }
            enumSetNoneOf.add(bVarValueOf);
        }
        return Collections.unmodifiableSet(enumSetNoneOf);
    }

    public static void Q1(Activity activity, String str, String str2) {
        if (activity == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            intent.putExtra("android.intent.extra.TITLE", str);
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
            intent.putExtra("android.intent.extra.TEXT", str2);
            boolean z = true;
            for (ResolveInfo resolveInfo : activity.getPackageManager().queryIntentActivities(intent, 65536)) {
                if (resolveInfo.activityInfo.packageName.toLowerCase().startsWith("com.facebook.katana") || resolveInfo.activityInfo.packageName.toLowerCase().startsWith("com.facebook.lite")) {
                    intent.setPackage(resolveInfo.activityInfo.packageName);
                    break;
                }
            }
            z = false;
            if (z) {
                activity.startActivity(intent);
            } else {
                X1(activity, activity.getText(com.noinnion.android.R$string.service_facebook_no_activity));
            }
        } catch (Exception e) {
            e.printStackTrace();
            X1(activity, activity.getText(com.noinnion.android.R$string.service_facebook_no_activity));
        }
    }

    public static long R(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static List<Map<String, ?>> R0(Map<String, ?> map) {
        String strG;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("loadBalancingConfig")) {
            List<?> listB = m77.b(map, "loadBalancingConfig");
            if (listB == null) {
                listB = null;
            } else {
                m77.a(listB);
            }
            arrayList.addAll(listB);
        }
        if (arrayList.isEmpty() && (strG = m77.g(map, "loadBalancingPolicy")) != null) {
            arrayList.add(Collections.singletonMap(strG.toLowerCase(Locale.ROOT), Collections.emptyMap()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void R1(Activity activity, String str) {
        if (activity == null || TextUtils.isEmpty(str)) {
            return;
        }
        boolean z = false;
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", str);
            intent.setType("text/plain");
            for (ResolveInfo resolveInfo : activity.getPackageManager().queryIntentActivities(intent, 0)) {
                String str2 = resolveInfo.activityInfo.name;
                if (str2.startsWith("com.twitter.android.") || "com.twidroydlegacy.SendTweet".equals(str2) || "com.handmark.tweetcaster.ShareSelectorActivity".equals(str2) || "com.levelup.touiteur.appwidgets.TouiteurWidgetNewTweet".equals(str2) || "com.tweetdeck.compose.ComposeActivity".equals(str2) || "com.jv.falcon.pro.activities.TweetWriter".equals(str2)) {
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    s7 s7Var = new s7(activity, activity.getComponentName());
                    s7Var.a.putExtra("android.intent.extra.TEXT", (CharSequence) str);
                    s7Var.a.setType("text/plain");
                    activity.startActivity(s7Var.a().setPackage(activityInfo.applicationInfo.packageName));
                    z = true;
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (z) {
            return;
        }
        X1(activity, activity.getText(com.noinnion.android.R$string.service_twitter_no_activity));
    }

    public static int S(qk6 qk6Var, byte[] bArr, int i, int i2, int i3, ni6 ni6Var) throws IOException {
        ck6 ck6Var = (ck6) qk6Var;
        Object objC = ck6Var.c();
        int iL = ck6Var.L(objC, bArr, i, i2, i3, ni6Var);
        ck6Var.f(objC);
        ni6Var.c = objC;
        return iL;
    }

    public static String S0(String str) {
        return (str.startsWith("id") && str.indexOf("_") == 18) ? str.substring(19) : str;
    }

    public static void S1(Activity activity, boolean z) {
        Window window = activity.getWindow();
        if (z) {
            window.addFlags(1024);
            window.clearFlags(RecyclerView.a0.FLAG_MOVED);
        } else {
            window.addFlags(RecyclerView.a0.FLAG_MOVED);
            window.clearFlags(1024);
        }
    }

    public static int T(qk6 qk6Var, byte[] bArr, int i, int i2, ni6 ni6Var) throws IOException {
        int iH0 = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iH0 = h0(i3, bArr, iH0, ni6Var);
            i3 = ni6Var.a;
        }
        int i4 = iH0;
        if (i3 < 0 || i3 > i2 - i4) {
            throw kj6.h();
        }
        Object objC = qk6Var.c();
        int i5 = i3 + i4;
        qk6Var.i(objC, bArr, i4, i5, ni6Var);
        qk6Var.f(objC);
        ni6Var.c = objC;
        return i5;
    }

    public static int T0(Context context, int i) {
        if (i == 0) {
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean T1(defpackage.o07 r4, int r5, int r6) {
        /*
            r0 = 0
            if (r4 == 0) goto L3a
            nz6 r4 = (defpackage.nz6) r4
            boolean r1 = r4.t
            r2 = 1
            if (r1 != 0) goto L2f
            boolean r1 = r4.f()
            if (r1 != 0) goto L29
            boolean r1 = r4.g()
            if (r1 == 0) goto L17
            goto L29
        L17:
            k07 r1 = r4.s
            if (r1 == 0) goto L27
            mz6 r1 = new mz6
            r1.<init>(r4, r5, r6)
            android.os.Handler r3 = r4.g
            kz6 r4 = r4.e
            defpackage.nz6.j(r1, r0, r3, r4)
        L27:
            r4 = 1
            goto L2a
        L29:
            r4 = 0
        L2a:
            if (r4 == 0) goto L2d
            goto L2f
        L2d:
            r4 = 0
            goto L30
        L2f:
            r4 = 1
        L30:
            if (r4 != 0) goto L3a
            int r5 = r5 * 100
            int r5 = r5 / r6
            r4 = 75
            if (r5 >= r4) goto L3a
            return r2
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n56.T1(o07, int, int):boolean");
    }

    public static int U(qk6<?> qk6Var, int i, byte[] bArr, int i2, int i3, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        int iT = T(qk6Var, bArr, i2, i3, ni6Var);
        dVar.add(ni6Var.c);
        while (iT < i3) {
            int iI0 = i0(bArr, iT, ni6Var);
            if (i != ni6Var.a) {
                break;
            }
            iT = T(qk6Var, bArr, iI0, i3, ni6Var);
            dVar.add(ni6Var.c);
        }
        return iT;
    }

    public static int U0(View view) {
        Interpolator interpolator = MenuDrawer.b0;
        return (int) (view.getTranslationX() + view.getRight());
    }

    public static void U1(Activity activity, ap6 ap6Var) {
        if (ap6Var == null || !ap6Var.b()) {
            return;
        }
        cp6 cp6VarM = ap6Var.m();
        String strI0 = I0(cp6VarM.a, ap6Var.f);
        if (strI0 == null) {
            return;
        }
        String string = activity.getText(new File(strI0).exists() ? R.string.media_play : R.string.txt_download).toString();
        t75 t75Var = new t75(activity);
        CharSequence text = activity.getText(R.string.download_podcast);
        AlertController.b bVar = t75Var.a;
        bVar.e = text;
        bVar.g = cp6VarM.a;
        t75Var.k(string, new ln6(ap6Var, cp6VarM, activity));
        CharSequence text2 = activity.getText(R.string.download_stream);
        kn6 kn6Var = new kn6(ap6Var, activity, cp6VarM);
        AlertController.b bVar2 = t75Var.a;
        bVar2.l = text2;
        bVar2.m = kn6Var;
        t75Var.h(android.R.string.cancel, new jn6()).a().show();
    }

    public static int V(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        oi6 oi6Var = (oi6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            iI0 = k0(bArr, iI0, ni6Var);
            oi6Var.h(ni6Var.b != 0);
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static int V0(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = fArr[2] * 0.5f;
        return Color.HSVToColor(fArr);
    }

    public static void V1(Activity activity, long j, String str, String str2) throws Resources.NotFoundException {
        if (!TtsService.b()) {
            j2(activity, null, j, str, str2);
            return;
        }
        String[] stringArray = activity.getResources().getStringArray(R.array.tts_labels);
        t75 t75Var = new t75(activity);
        t75Var.a.e = activity.getText(R.string.tts_new_item);
        t75Var.f(stringArray, new mn6(activity, j, str));
        t75Var.a().show();
    }

    public static int W(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        vi6 vi6Var = (vi6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            vi6Var.h(Double.longBitsToDouble(R(bArr, iI0)));
            iI0 += 8;
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static int W0(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.x;
    }

    public static void W1(Context context, int i) {
        X1(context, context.getString(i));
    }

    public static int X(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        ij6 ij6Var = (ij6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            ij6Var.h(Q(bArr, iI0));
            iI0 += 4;
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static final String X0(SkuDetails skuDetails) {
        im7.e(skuDetails, "$this$titleWithoutAppName");
        im7.e("(?> \\(.+?\\))$", "pattern");
        Pattern patternCompile = Pattern.compile("(?> \\(.+?\\))$");
        im7.d(patternCompile, "Pattern.compile(pattern)");
        im7.e(patternCompile, "nativePattern");
        String strOptString = skuDetails.b.optString("title");
        im7.d(strOptString, "title");
        im7.e(strOptString, "input");
        im7.e("", "replacement");
        String strReplaceAll = patternCompile.matcher(strOptString).replaceAll("");
        im7.d(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return strReplaceAll;
    }

    public static void X1(Context context, CharSequence charSequence) {
        if (context == null) {
            return;
        }
        Y1(context, charSequence, 0);
    }

    public static int Y(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        rj6 rj6Var = (rj6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            rj6Var.h(R(bArr, iI0));
            iI0 += 8;
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static int Y0(View view) {
        Interpolator interpolator = MenuDrawer.b0;
        return (int) (view.getTranslationY() + view.getTop());
    }

    public static void Y1(Context context, CharSequence charSequence, int i) {
        new Handler(Looper.getMainLooper()).post(new py6(context, charSequence, i));
    }

    public static int Z(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        ej6 ej6Var = (ej6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            ej6Var.h(Float.intBitsToFloat(Q(bArr, iI0)));
            iI0 += 4;
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static int Z0(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    public static void Z1(Activity activity) {
        if (activity == null) {
            return;
        }
        activity.startActivity(new Intent(activity, (Class<?>) PremiumActivity.class));
    }

    public static void a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws kj6 {
        if (!m1(b2)) {
            if ((((b2 + 112) + (b << 28)) >> 30) == 0 && !m1(b3) && !m1(b4)) {
                int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
                cArr[i] = (char) ((i2 >>> 10) + 55232);
                cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                return;
            }
        }
        throw kj6.c();
    }

    public static int a0(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        ij6 ij6Var = (ij6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            iI0 = i0(bArr, iI0, ni6Var);
            ij6Var.h(ri6.b(ni6Var.a));
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static String a1(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static final char a2(char[] cArr) {
        im7.e(cArr, "$this$single");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static boolean b(byte b) {
        return b >= 0;
    }

    public static int b0(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        rj6 rj6Var = (rj6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            iI0 = k0(bArr, iI0, ni6Var);
            rj6Var.h(ri6.c(ni6Var.b));
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static void b1(Activity activity) {
        Intent intent = lw6.n(activity, iw6.a0(activity)) ? new Intent(activity, (Class<?>) HomeTabletActivity.class) : new Intent(activity, (Class<?>) HomeActivity.class);
        intent.addFlags(67108864);
        activity.startActivity(intent);
        activity.finish();
    }

    public static final tt7 b2(Socket socket) throws IOException {
        Logger logger = jt7.a;
        im7.e(socket, "$this$sink");
        ut7 ut7Var = new ut7(socket);
        OutputStream outputStream = socket.getOutputStream();
        im7.d(outputStream, "getOutputStream()");
        return ut7Var.sink(new mt7(outputStream, ut7Var));
    }

    public static void c(byte b, byte b2, char[] cArr, int i) throws kj6 {
        if (b < -62 || m1(b2)) {
            throw kj6.c();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    public static int c0(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        ij6 ij6Var = (ij6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            iI0 = i0(bArr, iI0, ni6Var);
            ij6Var.h(ni6Var.a);
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static final void c1(rk7 rk7Var, Throwable th) {
        try {
            int i = CoroutineExceptionHandler.c;
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) rk7Var.c(CoroutineExceptionHandler.a.a);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.n(rk7Var, th);
            } else {
                dp7.a(rk7Var, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                i(runtimeException, th);
                th = runtimeException;
            }
            dp7.a(rk7Var, th);
        }
    }

    public static tt7 c2(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        Logger logger = jt7.a;
        if ((i & 1) != 0) {
            z = false;
        }
        im7.e(file, "$this$sink");
        FileOutputStream fileOutputStream = new FileOutputStream(file, z);
        im7.e(fileOutputStream, "$this$sink");
        return new mt7(fileOutputStream, new wt7());
    }

    public static void d(byte b, byte b2, byte b3, char[] cArr, int i) throws kj6 {
        if (m1(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m1(b3)))) {
            throw kj6.c();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    public static int d0(byte[] bArr, int i, jj6.d<?> dVar, ni6 ni6Var) throws IOException {
        rj6 rj6Var = (rj6) dVar;
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a + iI0;
        while (iI0 < i2) {
            iI0 = k0(bArr, iI0, ni6Var);
            rj6Var.h(ni6Var.b);
        }
        if (iI0 == i2) {
            return iI0;
        }
        throw kj6.h();
    }

    public static void d1(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static int d2(int i, byte[] bArr, int i2, int i3, ni6 ni6Var) throws kj6 {
        if ((i >>> 3) == 0) {
            throw kj6.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return k0(bArr, i2, ni6Var);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return i0(bArr, i2, ni6Var) + ni6Var.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw kj6.b();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = i0(bArr, i2, ni6Var);
            i6 = ni6Var.a;
            if (i6 == i5) {
                break;
            }
            i2 = d2(i6, bArr, i2, i3, ni6Var);
        }
        if (i2 > i3 || i6 != i5) {
            throw kj6.g();
        }
        return i2;
    }

    public static long e(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j2, h(j2, j)));
        return j2;
    }

    public static int e0(byte[] bArr, int i, ni6 ni6Var) throws kj6 {
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a;
        if (i2 < 0) {
            throw kj6.f();
        }
        if (i2 == 0) {
            ni6Var.c = "";
            return iI0;
        }
        ni6Var.c = new String(bArr, iI0, i2, jj6.a);
        return iI0 + i2;
    }

    public static String e1(Object[] objArr, String str) {
        if (objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(str);
            }
            sb.append(objArr[i]);
        }
        return sb.toString();
    }

    public static final vt7 e2(InputStream inputStream) {
        Logger logger = jt7.a;
        im7.e(inputStream, "$this$source");
        return new it7(inputStream, new wt7());
    }

    public static final <T> boolean f(Collection<? super T> collection, Iterable<? extends T> iterable) {
        im7.e(collection, "$this$addAll");
        im7.e(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    public static int f0(byte[] bArr, int i, ni6 ni6Var) throws kj6 {
        int iI0 = i0(bArr, i, ni6Var);
        int i2 = ni6Var.a;
        if (i2 < 0) {
            throw kj6.f();
        }
        if (i2 == 0) {
            ni6Var.c = "";
            return iI0;
        }
        ni6Var.c = dl6.c(bArr, iI0, i2);
        return iI0 + i2;
    }

    public static void f1(Context context, lp6 lp6Var) {
        int iIndexOf = lp6Var.f.indexOf("@");
        if (iIndexOf > -1) {
            ew6 ew6Var = on6.a;
            String str = lp6Var.f;
            ew6Var.c = str.substring(iIndexOf + 1, str.length());
            String strSubstring = lp6Var.f.substring(0, iIndexOf);
            if (strSubstring.startsWith(RssReaderClient.USER_FEED)) {
                on6.a.a = ip6.d(context, strSubstring, true);
                return;
            }
            if (strSubstring.startsWith("user/")) {
                on6.a.b = lp6.b(context, strSubstring, true);
            } else if (strSubstring.startsWith("cached")) {
                on6.a.d = true;
            } else if (strSubstring.startsWith("podcast")) {
                on6.a.e = true;
            } else {
                on6.a.b();
            }
        }
    }

    public static final vt7 f2(Socket socket) throws IOException {
        Logger logger = jt7.a;
        im7.e(socket, "$this$source");
        ut7 ut7Var = new ut7(socket);
        InputStream inputStream = socket.getInputStream();
        im7.d(inputStream, "getInputStream()");
        return ut7Var.source(new it7(inputStream, ut7Var));
    }

    public static long g(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j2, h(j2, j)));
        return j2;
    }

    public static int g0(int i, byte[] bArr, int i2, int i3, zk6 zk6Var, ni6 ni6Var) throws kj6 {
        if ((i >>> 3) == 0) {
            throw kj6.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iK0 = k0(bArr, i2, ni6Var);
            zk6Var.c(i, Long.valueOf(ni6Var.b));
            return iK0;
        }
        if (i4 == 1) {
            zk6Var.c(i, Long.valueOf(R(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iI0 = i0(bArr, i2, ni6Var);
            int i5 = ni6Var.a;
            if (i5 < 0) {
                throw kj6.f();
            }
            if (i5 > bArr.length - iI0) {
                throw kj6.h();
            }
            if (i5 == 0) {
                zk6Var.c(i, qi6.f);
            } else {
                zk6Var.c(i, qi6.o(bArr, iI0, i5));
            }
            return iI0 + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw kj6.b();
            }
            zk6Var.c(i, Integer.valueOf(Q(bArr, i2)));
            return i2 + 4;
        }
        zk6 zk6VarB = zk6.b();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iI02 = i0(bArr, i2, ni6Var);
            int i8 = ni6Var.a;
            if (i8 == i6) {
                i7 = i8;
                i2 = iI02;
                break;
            }
            i7 = i8;
            i2 = g0(i8, bArr, iI02, i3, zk6VarB, ni6Var);
        }
        if (i2 > i3 || i7 != i6) {
            throw kj6.g();
        }
        zk6Var.c(i, zk6VarB);
        return i2;
    }

    public static Bundle g1(Intent intent) {
        Bundle bundle = new Bundle();
        if (intent == null) {
            return bundle;
        }
        Uri data = intent.getData();
        if (data != null) {
            bundle.putParcelable("_uri", data);
        }
        if (intent.getExtras() != null) {
            bundle.putAll(intent.getExtras());
        }
        return bundle;
    }

    public static void g2(Activity activity, ip6 ip6Var) {
        on6.a.a();
        on6.a.a = ip6Var;
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.ITEM_LIST");
        intent.putExtra("subId", ip6Var.e);
        ((HomeBaseActivity) activity).J(intent);
    }

    public static long h(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    public static int h0(int i, byte[] bArr, int i2, ni6 ni6Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            ni6Var.a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            ni6Var.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            ni6Var.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            ni6Var.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                ni6Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> pk7<T> h1(pk7<? super T> pk7Var) {
        pk7<T> pk7Var2;
        im7.e(pk7Var, "$this$intercepted");
        vk7 vk7Var = !(pk7Var instanceof vk7) ? null : pk7Var;
        return (vk7Var == null || (pk7Var2 = (pk7<T>) vk7Var.intercepted()) == null) ? pk7Var : pk7Var2;
    }

    public static void h2(Activity activity, lp6 lp6Var) {
        on6.a.a();
        if (lp6Var.g == 9) {
            f1(activity, lp6Var);
        } else {
            on6.a.b = lp6Var;
        }
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.ITEM_LIST");
        intent.putExtra("tagUid", lp6Var.f);
        ((HomeBaseActivity) activity).J(intent);
    }

    public static final void i(Throwable th, Throwable th2) {
        im7.e(th, "$this$addSuppressed");
        im7.e(th2, "exception");
        if (th != th2) {
            al7.a.a(th, th2);
        }
    }

    public static int i0(byte[] bArr, int i, ni6 ni6Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return h0(b, bArr, i2, ni6Var);
        }
        ni6Var.a = b;
        return i2;
    }

    public static final boolean i1(AssertionError assertionError) {
        Logger logger = jt7.a;
        im7.e(assertionError, "$this$isAndroidGetsocknameError");
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message != null ? co7.b(message, "getsockname failed", false, 2) : false;
    }

    public static void i2(Activity activity) {
        Intent intent = new Intent(activity, (Class<?>) LoginActivity.class);
        intent.addFlags(67108864);
        Bundle bundle = new Bundle();
        bundle.putBoolean("auto_login", false);
        intent.putExtras(bundle);
        try {
            try {
                activity.startActivity(intent);
            } catch (Exception e) {
                X1(activity, e.getLocalizedMessage());
            }
        } finally {
            activity.finish();
        }
    }

    public static final void j(ic7 ic7Var, BaseDialogActivity baseDialogActivity) {
        im7.e(ic7Var, "$this$addTo");
        im7.e(baseDialogActivity, "activity");
        im7.e(ic7Var, "disposable");
        baseDialogActivity.x.b(ic7Var);
    }

    public static int j0(int i, byte[] bArr, int i2, int i3, jj6.d<?> dVar, ni6 ni6Var) {
        ij6 ij6Var = (ij6) dVar;
        int iI0 = i0(bArr, i2, ni6Var);
        ij6Var.h(ni6Var.a);
        while (iI0 < i3) {
            int iI02 = i0(bArr, iI0, ni6Var);
            if (i != ni6Var.a) {
                break;
            }
            iI0 = i0(bArr, iI02, ni6Var);
            ij6Var.h(ni6Var.a);
        }
        return iI0;
    }

    public static final boolean j1(int i) {
        return i == 1;
    }

    public static void j2(Activity activity, String str, long j, String str2, String str3) {
        if (!TtsService.b() || str == null) {
            Intent intent = new Intent(activity, (Class<?>) TtsActivity.class);
            intent.putExtra("ttsInitVoices", true);
            intent.putExtra("itemId", j);
            intent.putExtra("ttsUrl", str2);
            intent.putExtra("ttsTitle", str3);
            activity.startActivity(intent);
            return;
        }
        Intent intent2 = new Intent(activity, (Class<?>) TtsService.class);
        intent2.setAction(str);
        intent2.putExtra("itemId", j);
        intent2.putExtra("ttsUrl", str2);
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            activity.startForegroundService(intent2);
        } else {
            activity.startService(intent2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void k(Appendable appendable, T t, pl7<? super T, ? extends CharSequence> pl7Var) throws IOException {
        im7.e(appendable, "$this$appendElement");
        if (pl7Var != null) {
            appendable.append(pl7Var.invoke(t));
            return;
        }
        if (t != 0 ? t instanceof CharSequence : true) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }

    public static int k0(byte[] bArr, int i, ni6 ni6Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            ni6Var.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        ni6Var.b = j2;
        return i3;
    }

    public static boolean k1(int i) {
        return (((double) Color.blue(i)) * 0.114d) + ((((double) Color.green(i)) * 0.587d) + (((double) Color.red(i)) * 0.299d)) < 160.0d;
    }

    public static x47 k2(l37 l37Var) {
        c50.A(l37Var, "context must not be null");
        if (!l37Var.m()) {
            return null;
        }
        Throwable thE = l37Var.e();
        if (thE == null) {
            return x47.g.h("io.grpc.Context was cancelled without error");
        }
        if (thE instanceof TimeoutException) {
            return x47.i.h(thE.getMessage()).g(thE);
        }
        x47 x47VarE = x47.e(thE);
        return (x47.b.UNKNOWN.equals(x47VarE.a) && x47VarE.c == thE) ? x47.g.h("Context cancelled").g(thE) : x47VarE.g(thE);
    }

    public static final tt7 l(File file) throws FileNotFoundException {
        Logger logger = jt7.a;
        im7.e(file, "$this$appendingSink");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        im7.e(fileOutputStream, "$this$sink");
        return new mt7(fileOutputStream, new wt7());
    }

    public static void l0(Context context) {
        File file = new File(context.getDatabasePath("reader.db").toString());
        if (file.exists()) {
            file.delete();
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            File file2 = new File(Environment.getExternalStorageDirectory(), "/gReader/db/reader.db");
            if (file2.exists()) {
                file2.delete();
            }
        }
        on6.i(context).E();
        iw6.U(context, "last_sync_time", 0L);
        iw6.T(context, "unread_count", 0);
        on6.b();
    }

    public static boolean l1(Context context) {
        return context.getResources().getConfiguration().isLayoutSizeAtLeast(4);
    }

    public static String l2(String str) {
        return m2(str, false);
    }

    public static final boolean m(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        im7.e(bArr, "a");
        im7.e(bArr2, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static void m0(Context context) {
        String strC = iw6.C(context);
        if (strC == null) {
            strC = Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        File file = new File(jo.n(strC, "/gReader/.image-cache/"));
        if (file.exists()) {
            hy6.c(file);
        }
    }

    public static boolean m1(byte b) {
        return b > -65;
    }

    public static String m2(String str, boolean z) {
        if (str == null) {
            return "";
        }
        try {
            String strReplaceAll = str.replaceAll("(?i)(<(style|script)>.*?</(style|script)>|<.*?>)", "");
            if (z) {
                strReplaceAll = strReplaceAll.replaceAll("(\n|\r|\t|��|\\s{2,})", StringUtils.SPACE);
            }
            return strReplaceAll.trim();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static Bitmap n(View view) {
        Context context = view.getContext();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmapCreateBitmap));
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, Math.round(bitmapCreateBitmap.getWidth() * 0.2f), Math.round(bitmapCreateBitmap.getHeight() * 0.2f), false);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateScaledBitmap);
        RenderScript renderScriptCreate = RenderScript.create(context);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
        Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap2);
        scriptIntrinsicBlurCreate.setRadius(6.0f);
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
        allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap2);
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        Paint paint = new Paint(-16777216);
        paint.setColorFilter(new LightingColorFilter(11184810, 0));
        canvas.drawBitmap(bitmapCreateBitmap2, new Matrix(), paint);
        return bitmapCreateBitmap2;
    }

    public static void n0(Context context) {
        String strC = iw6.C(context);
        if (strC == null) {
            strC = Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        File file = new File(jo.n(strC, "/gReader/cache/"));
        if (file.exists()) {
            hy6.c(file);
        }
        File file2 = new File(jo.n(strC, "/gReader/.css/"));
        if (file2.exists()) {
            hy6.c(file2);
        }
    }

    public static boolean n1(Context context) {
        return context != null && context.getResources().getConfiguration().orientation == 1;
    }

    public static final long n2(String str, long j, long j2, long j3) {
        String strO2 = o2(str);
        if (strO2 == null) {
            return j;
        }
        Long lE = co7.E(strO2);
        if (lE == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + strO2 + '\'').toString());
        }
        long jLongValue = lE.longValue();
        if (j2 <= jLongValue && j3 >= jLongValue) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + jLongValue + '\'').toString());
    }

    public static final zs7 o(tt7 tt7Var) {
        im7.e(tt7Var, "$this$buffer");
        return new ot7(tt7Var);
    }

    public static int o0(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static final boolean o1(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    public static final String o2(String str) {
        int i = zq7.a;
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static final at7 p(vt7 vt7Var) {
        im7.e(vt7Var, "$this$buffer");
        return new pt7(vt7Var);
    }

    public static final <T> void p0(jp7<? super T> jp7Var, int i) {
        pk7<T> pk7Var = ((po7) jp7Var).i;
        if (!(i == 0 || i == 1) || !(pk7Var instanceof hp7) || j1(i) != j1(jp7Var.g)) {
            J1(jp7Var, pk7Var, i);
            return;
        }
        cp7 cp7Var = ((hp7) pk7Var).k;
        rk7 context = pk7Var.getContext();
        if (cp7Var.w(context)) {
            cp7Var.t(context, jp7Var);
            return;
        }
        iq7 iq7Var = iq7.b;
        np7 np7VarA = iq7.a();
        if (np7VarA.I()) {
            np7VarA.E(jp7Var);
            return;
        }
        np7VarA.F(true);
        try {
            J1(jp7Var, ((po7) jp7Var).i, 2);
            do {
            } while (np7VarA.L());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static String p1(Object obj, String str) {
        if (!obj.getClass().isArray()) {
            throw new IllegalArgumentException("Given object is not an array!");
        }
        StringBuilder sb = new StringBuilder();
        int length = Array.getLength(obj) - 1;
        for (int i = 0; i <= length; i++) {
            sb.append(String.valueOf(Array.get(obj, i)));
            if (i != length) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static int p2(String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return (int) n2(str, i, i2, i3);
    }

    public static zb7 q(Callable<zb7> callable) {
        try {
            zb7 zb7VarCall = callable.call();
            Objects.requireNonNull(zb7VarCall, "Scheduler Callable result can't be null");
            return zb7VarCall;
        } catch (Throwable th) {
            throw vi7.d(th);
        }
    }

    public static void q0(Activity activity, int i) {
        if (i == 0) {
            jw6.a(activity, "https://noinnion.com/greader");
            return;
        }
        if (i == 1) {
            jw6.a(activity, "https://github.com/noinnion/greader/issues");
            return;
        }
        if (i == 2) {
            Intent intent = new Intent(activity, (Class<?>) SendLogActivity.class);
            intent.putExtra("com.noinnion.android.greader.reader.extra.SEND_LOG", true);
            activity.startActivity(intent);
        } else if (i == 3) {
            jw6.a(activity, "http://crowdin.net/project/greader");
        } else {
            if (i != 4) {
                return;
            }
            jw6.a(activity, "https://noinnion.com/greader/updates");
        }
    }

    public static final <T> oj7<T> q1(pj7 pj7Var, el7<? extends T> el7Var) {
        im7.e(pj7Var, "mode");
        im7.e(el7Var, "initializer");
        int iOrdinal = pj7Var.ordinal();
        if (iOrdinal == 0) {
            return new uj7(el7Var, null, 2);
        }
        if (iOrdinal == 1) {
            return new tj7(el7Var);
        }
        if (iOrdinal == 2) {
            return new zj7(el7Var);
        }
        throw new qj7();
    }

    public static /* synthetic */ long q2(String str, long j, long j2, long j3, int i, Object obj) {
        if ((i & 4) != 0) {
            j2 = 1;
        }
        long j4 = j2;
        if ((i & 8) != 0) {
            j3 = Long.MAX_VALUE;
        }
        return n2(str, j, j4, j3);
    }

    public static final String r(String str) {
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

    public static void r0(Context context, String str, String str2, String str3) {
        if (context == null || str == null || str2 == null || str3 == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) DownloadService.class);
        intent.setData(Uri.parse(str));
        intent.putExtra("download_local", str2);
        intent.putExtra("download_type", str3);
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static final <T> List<T> r1(T t) {
        List<T> listSingletonList = Collections.singletonList(t);
        im7.d(listSingletonList, "java.util.Collections.singletonList(element)");
        return listSingletonList;
    }

    public static void r2(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static void s(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(R.id.notification_sync_finished);
        }
        iw6.T(context, "sync_last_sync_count", 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.lang.String[]] */
    public static void s0(Context context, String str, long j) {
        Context context2;
        String[] strArr;
        boolean z;
        String str2;
        String str3;
        String strJ;
        String str4;
        String str5;
        fw6 fw6VarA = fw6.a(context);
        StringBuilder sb = new StringBuilder();
        String string = null;
        if (str == null) {
            StringBuilder sbB = jo.B("SELECT s._id AS sub_id FROM subscription s INNER JOIN item i ON s._id = i.sub_id", " WHERE i.cached = 0 AND i.read = 0");
            if (j > 0) {
                str3 = " OR ";
                strJ = jo.j(" AND i.sync_time = ", j);
            } else {
                str3 = " OR ";
                strJ = "";
            }
            sbB.append(strJ);
            StringBuilder sb2 = new StringBuilder();
            if (fw6VarA.a || !(fw6VarA.b || fw6VarA.c || fw6VarA.d)) {
                str4 = "&";
                sb2.append("(s.offline_content > 0");
                sb2.append(fw6VarA.a ? " OR s.offline_content = -1" : "");
                sb2.append(")");
            } else {
                StringBuilder sb3 = new StringBuilder();
                str4 = "&";
                if (fw6VarA.b && fw6VarA.e) {
                    sb3.append("i.image <> ''");
                }
                if (fw6VarA.c) {
                    sb3.append(sb3.length() > 0 ? str3 : "");
                    sb3.append("i.audio <> ''");
                }
                if (fw6VarA.d) {
                    sb3.append(sb3.length() > 0 ? str3 : "");
                    sb3.append("i.video <> ''");
                }
                if (sb3.length() > 0) {
                    sbB.append(" AND (");
                    sbB.append((CharSequence) sb3);
                    sbB.append(")");
                }
            }
            sbB.append(" GROUP BY s._id HAVING COUNT(*) > 0");
            if (sb2.length() > 0) {
                str5 = " AND " + ((Object) sb2);
            } else {
                str5 = "";
            }
            sbB.append(str5);
            Cursor cursorQuery = context.getContentResolver().query(ReaderProvider.g, null, sbB.toString(), null, null);
            sbB.setLength(0);
            sbB.append("SELECT i._id, i.updated_time FROM item i");
            sbB.append(" WHERE i.sub_id = ? AND i.cached = 0 AND i.read = 0");
            sbB.append(j > 0 ? jo.j(" AND i.sync_time = ", j) : "");
            if (!fw6VarA.a && (fw6VarA.b || fw6VarA.c || fw6VarA.d)) {
                StringBuilder sb4 = new StringBuilder();
                if (fw6VarA.b && fw6VarA.e) {
                    sb4.append("i.image <> ''");
                }
                if (fw6VarA.c) {
                    sb4.append(sb4.length() > 0 ? str3 : "");
                    sb4.append("i.audio <> ''");
                }
                if (fw6VarA.d) {
                    sb4.append(sb4.length() > 0 ? str3 : "");
                    sb4.append("i.video <> ''");
                }
                if (sb4.length() > 0) {
                    sbB.append(" AND (");
                    sbB.append((CharSequence) sb4);
                    sbB.append(")");
                }
            }
            sbB.append(" ORDER BY i.updated_time DESC, i._id");
            int iD = iw6.D(context);
            if (iD > 0) {
                sbB.append(" LIMIT ");
                sbB.append(iD);
            }
            ArrayList arrayList = new ArrayList();
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        do {
                            Cursor cursorQuery2 = context.getContentResolver().query(ReaderProvider.g, null, sbB.toString(), new String[]{String.valueOf(cursorQuery.getInt(0))}, null);
                            if (cursorQuery2 != null) {
                                if (cursorQuery2.moveToFirst()) {
                                    do {
                                        arrayList.add(new nx6(cursorQuery2.getInt(0), cursorQuery2.getInt(1), true));
                                    } while (cursorQuery2.moveToNext());
                                }
                            }
                            if (cursorQuery2 != null) {
                            }
                        } while (cursorQuery.moveToNext());
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
            if (cursorQuery != null) {
            }
            if (arrayList.size() != 0) {
                nx6[] nx6VarArr = (nx6[]) arrayList.toArray(new nx6[arrayList.size()]);
                Arrays.sort(nx6VarArr);
                string = e1(nx6VarArr, str4);
            }
            z = false;
            context2 = context;
        } else {
            if (str.startsWith(RssReaderClient.USER_FEED)) {
                context2 = context;
                ip6 ip6VarD = ip6.d(context2, str, false);
                if (ip6VarD != null) {
                    sb.append("SELECT i._id FROM item i");
                    sb.append(" WHERE i.sub_id = ? AND i.cached = 0 AND i.read = 0");
                    if (!fw6VarA.a && (fw6VarA.b || fw6VarA.c || fw6VarA.d)) {
                        StringBuilder sb5 = new StringBuilder();
                        if (fw6VarA.b && fw6VarA.e) {
                            sb5.append("i.image <> ''");
                        }
                        if (fw6VarA.c) {
                            sb5.append(sb5.length() > 0 ? " OR " : "");
                            sb5.append("i.audio <> ''");
                        }
                        if (fw6VarA.d) {
                            sb5.append(sb5.length() > 0 ? " OR " : "");
                            sb5.append("i.video <> ''");
                        }
                        if (sb5.length() > 0) {
                            sb.append(" AND (");
                            sb.append((CharSequence) sb5);
                            sb.append(")");
                        }
                    }
                    sb.append(" ORDER BY i.updated_time DESC, i._id");
                    int iD2 = iw6.D(context);
                    if (iD2 > 0) {
                        sb.append(" LIMIT ");
                        sb.append(iD2);
                    }
                    str2 = new String[]{String.valueOf(ip6VarD.e)};
                    string = str2;
                    strArr = string;
                }
                z = false;
            } else {
                context2 = context;
                if (str.startsWith("user/")) {
                    lp6 lp6VarB = lp6.b(context2, str, false);
                    if (lp6VarB != null) {
                        int i = lp6VarB.g;
                        if (i == 11) {
                            sb.append("SELECT i._id FROM item i");
                            sb.append(" WHERE i.cached = 0 AND i.read = 0 AND i.sub_id IN (SELECT tag2sub.sub_id FROM tag2sub WHERE tag2sub.tag_uid = ?)");
                            if (!fw6VarA.a && (fw6VarA.b || fw6VarA.c || fw6VarA.d)) {
                                StringBuilder sb6 = new StringBuilder();
                                if (fw6VarA.b && fw6VarA.e) {
                                    sb6.append("i.image <> ''");
                                }
                                if (fw6VarA.c) {
                                    sb6.append(sb6.length() > 0 ? " OR " : "");
                                    sb6.append("i.audio <> ''");
                                }
                                if (fw6VarA.d) {
                                    sb6.append(sb6.length() > 0 ? " OR " : "");
                                    sb6.append("i.video <> ''");
                                }
                                if (sb6.length() > 0) {
                                    sb.append(" AND (");
                                    sb.append((CharSequence) sb6);
                                    sb.append(")");
                                }
                            }
                            sb.append(" ORDER BY i.updated_time DESC, i._id");
                            int iD3 = iw6.D(context);
                            if (iD3 > 0) {
                                sb.append(" LIMIT ");
                                sb.append(iD3);
                            }
                            str2 = new String[]{String.valueOf(lp6VarB.f)};
                            string = str2;
                            strArr = string;
                        } else if (i == 1 || i == 10) {
                            sb.append("SELECT i._id FROM item i");
                            sb.append(" WHERE i.cached = 0 AND i.read = 0 AND i.uid IN (SELECT tag2item.item_uid FROM tag2item WHERE tag2item.tag_uid = ?)");
                            if (!fw6VarA.a && (fw6VarA.b || fw6VarA.c || fw6VarA.d)) {
                                StringBuilder sb7 = new StringBuilder();
                                if (fw6VarA.b && fw6VarA.e) {
                                    sb7.append("i.image <> ''");
                                }
                                if (fw6VarA.c) {
                                    sb7.append(sb7.length() > 0 ? " OR " : "");
                                    sb7.append("i.audio <> ''");
                                }
                                if (fw6VarA.d) {
                                    sb7.append(sb7.length() > 0 ? " OR " : "");
                                    sb7.append("i.video <> ''");
                                }
                                if (sb7.length() > 0) {
                                    sb.append(" AND (");
                                    sb.append((CharSequence) sb7);
                                    sb.append(")");
                                }
                            }
                            sb.append(" ORDER BY i.updated_time DESC, i._id");
                            int iD4 = iw6.D(context);
                            if (iD4 > 0) {
                                sb.append(" LIMIT ");
                                sb.append(iD4);
                            }
                            strArr = new String[]{String.valueOf(lp6VarB.f)};
                        }
                    }
                    z = false;
                } else {
                    strArr = string;
                }
            }
            StringBuilder sb8 = new StringBuilder();
            Cursor cursorQuery3 = context.getContentResolver().query(ReaderProvider.g, null, sb.toString(), strArr, null);
            if (cursorQuery3 != null) {
                try {
                    if (cursorQuery3.moveToFirst()) {
                        boolean z2 = true;
                        do {
                            if (z2) {
                                z2 = false;
                            } else {
                                sb8.append("&");
                            }
                            sb8.append(cursorQuery3.getInt(0));
                        } while (cursorQuery3.moveToNext());
                    }
                } finally {
                }
            }
            if (cursorQuery3 != null) {
            }
            string = sb8.toString();
            z = false;
        }
        String str6 = string;
        if (str6 == null || str6.length() == 0) {
            return;
        }
        if (FeedService.y != null) {
            z = true;
        }
        if (z) {
            Intent intent = new Intent("com.noinnion.android.greader.reader.action.START_START_DOWNLOADING");
            intent.putExtra("item_ids", str6);
            yd.a(context).c(intent);
            return;
        }
        Intent intent2 = new Intent(context2, (Class<?>) FeedService.class);
        intent2.putExtra("item_ids", str6);
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context2.startForegroundService(intent2);
        } else {
            context2.startService(intent2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.ServiceLoader] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.ServiceLoader] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v0, types: [w47, w47<T>] */
    public static <T> List<T> s1(Class<T> cls, Iterable<Class<?>> iterable, ClassLoader classLoader, w47<T> w47Var) throws ClassNotFoundException {
        boolean z;
        ?? Load;
        try {
            Class.forName("android.app.Application", false, classLoader);
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        if (z) {
            Load = new ArrayList();
            for (Class<?> cls2 : iterable) {
                try {
                    Load.add(cls2.asSubclass(cls).getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Throwable th) {
                    throw new ServiceConfigurationError(String.format("Provider %s could not be instantiated %s", cls2.getName(), th), th);
                }
            }
        } else {
            Load = ServiceLoader.load(cls, classLoader);
            if (!Load.iterator().hasNext()) {
                Load = ServiceLoader.load(cls);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : Load) {
            if (w47Var.a(obj)) {
                arrayList.add(obj);
            }
        }
        Collections.sort(arrayList, Collections.reverseOrder(new v47(w47Var)));
        return Collections.unmodifiableList(arrayList);
    }

    public static final String s2(pk7<?> pk7Var) {
        Object objK;
        if (pk7Var instanceof hp7) {
            return pk7Var.toString();
        }
        try {
            objK = pk7Var + '@' + L0(pk7Var);
        } catch (Throwable th) {
            objK = K(th);
        }
        if (sj7.a(objK) != null) {
            objK = pk7Var.getClass().getName() + '@' + L0(pk7Var);
        }
        return (String) objK;
    }

    public static void t(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static ic7 t0() {
        return new jc7(dd7.b);
    }

    public static void t1(String str) {
        if (Log.isLoggable("FIAM.Headless", 3)) {
            Log.d("FIAM.Headless", str);
        }
    }

    public static final String t2(byte b) {
        char[] cArr = yt7.a;
        return new String(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]});
    }

    public static final void u(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static String u0(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    public static void u1(String str) {
        if (Log.isLoggable("FIAM.Headless", 4)) {
            Log.i("FIAM.Headless", str);
        }
    }

    public static final <T> List<T> u2(sn7<? extends T> sn7Var) {
        im7.e(sn7Var, "$this$toList");
        im7.e(sn7Var, "$this$toMutableList");
        ArrayList arrayList = new ArrayList();
        im7.e(sn7Var, "$this$toCollection");
        im7.e(arrayList, "destination");
        Iterator<? extends T> it = sn7Var.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return ek7.n(arrayList);
    }

    public static final int v(int i) {
        if (2 <= i && 36 >= i) {
            return i;
        }
        StringBuilder sbA = jo.A("radix ", i, " was not in valid range ");
        sbA.append(new dn7(2, 36));
        throw new IllegalArgumentException(sbA.toString());
    }

    public static final boolean v0(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (z) {
            return Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
        }
        return false;
    }

    public static final int v1(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static final <T> List<T> v2(T[] tArr) {
        im7.e(tArr, "$this$toList");
        int length = tArr.length;
        if (length == 0) {
            return hk7.e;
        }
        if (length == 1) {
            return r1(tArr[0]);
        }
        im7.e(tArr, "$this$toMutableList");
        im7.e(tArr, "$this$asCollection");
        return new ArrayList(new ck7(tArr, false));
    }

    public static final void w(Closeable closeable, Throwable th) throws IOException {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            i(th, th2);
        }
    }

    public static String w0(qi6 qi6Var) {
        StringBuilder sb = new StringBuilder(qi6Var.size());
        for (int i = 0; i < qi6Var.size(); i++) {
            byte bH = qi6Var.h(i);
            if (bH == 34) {
                sb.append("\\\"");
            } else if (bH == 39) {
                sb.append("\\'");
            } else if (bH != 92) {
                switch (bH) {
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
                        if (bH < 32 || bH > 126) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((bH >>> 6) & 3) + 48));
                            sb.append((char) (((bH >>> 3) & 7) + 48));
                            sb.append((char) ((bH & 7) + 48));
                            break;
                        } else {
                            sb.append((char) bH);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static final int w1(int i, int i2) {
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    public static final <K, V> Map<K, V> w2(Map<? extends K, ? extends V> map) {
        im7.e(map, "$this$toSingletonMap");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> mapSingletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        im7.d(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }

    public static final <T> int x(Iterable<? extends T> iterable, int i) {
        im7.e(iterable, "$this$collectionSizeOrDefault");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i;
    }

    public static <R> R x0(rk7.a aVar, R r, tl7<? super R, ? super rk7.a, ? extends R> tl7Var) {
        im7.e(tl7Var, "operation");
        return tl7Var.b(r, aVar);
    }

    public static hb7 x1(hb7 hb7Var) {
        return hb7Var;
    }

    public static void x2(Activity activity) {
        boolean zN = iw6.N(activity);
        if (zN) {
            S1(activity, false);
            iw6.S(activity, "fullscreen", false);
        } else {
            S1(activity, true);
            iw6.S(activity, "fullscreen", true);
        }
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.FULLSCREEN");
        intent.putExtra("fullscreen", !zN);
        yd.a(activity).c(intent);
    }

    public static final <T extends Comparable<?>> int y(T t, T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }

    public static String y0(Context context, long j) {
        DateFormat timeFormat = android.text.format.DateFormat.getTimeFormat(context);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = jCurrentTimeMillis - j;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        long timeInMillis = jCurrentTimeMillis - new GregorianCalendar(gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5)).getTimeInMillis();
        if (j2 < timeInMillis) {
            return String.valueOf(context.getText(com.noinnion.android.R$string.time_today)) + ", " + timeFormat.format(new Date(j));
        }
        if (j2 >= timeInMillis + DateUtils.MILLIS_PER_DAY) {
            return DateFormat.getDateInstance().format(new Date(j));
        }
        return String.valueOf(context.getText(com.noinnion.android.R$string.time_yesterday)) + ", " + timeFormat.format(new Date(j));
    }

    public static void y1(String str, Throwable th) {
        Log.e(str, th.getClass().getSimpleName() + ": " + th.getLocalizedMessage());
    }

    public static void y2(Activity activity, int i) {
        if (activity == null) {
            return;
        }
        activity.getString(i);
    }

    public static final double z(double d, TimeUnit timeUnit, TimeUnit timeUnit2) {
        im7.e(timeUnit, "sourceUnit");
        im7.e(timeUnit2, "targetUnit");
        long jConvert = timeUnit2.convert(1L, timeUnit);
        return jConvert > 0 ? d * jConvert : d / timeUnit.convert(1L, timeUnit2);
    }

    public static sf5<?> z0(final String str, final bb6<Context> bb6Var) {
        sf5.b bVarA = sf5.a(za6.class);
        bVarA.d = 1;
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.d(new wf5(str, bb6Var) { // from class: ab6
            public final String a;
            public final bb6 b;

            {
                this.a = str;
                this.b = bb6Var;
            }

            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return new va6(this.a, this.b.a((Context) tf5Var.a(Context.class)));
            }
        });
        return bVarA.b();
    }

    public static void z1(Throwable th) {
        tc7<? super Throwable> tc7Var = a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else {
            boolean z = true;
            if (!(th instanceof mc7) && !(th instanceof lc7) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof kc7)) {
                z = false;
            }
            if (!z) {
                th = new oc7(th);
            }
        }
        if (tc7Var != null) {
            try {
                tc7Var.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
            }
        }
        th.printStackTrace();
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    public static <T, R> boolean z2(w38<T> w38Var, x38<? super R> x38Var, uc7<? super T, ? extends w38<? extends R>> uc7Var) {
        mi7 mi7Var = mi7.INSTANCE;
        if (!(w38Var instanceof Callable)) {
            return false;
        }
        try {
            a04 a04Var = (Object) ((Callable) w38Var).call();
            if (a04Var == null) {
                x38Var.e(mi7Var);
                x38Var.a();
                return true;
            }
            try {
                w38<? extends R> w38VarApply = uc7Var.apply(a04Var);
                Objects.requireNonNull(w38VarApply, "The mapper returned a null Publisher");
                w38<? extends R> w38Var2 = w38VarApply;
                if (w38Var2 instanceof Callable) {
                    try {
                        Object objCall = ((Callable) w38Var2).call();
                        if (objCall == null) {
                            x38Var.e(mi7Var);
                            x38Var.a();
                            return true;
                        }
                        x38Var.e(new ni7(x38Var, objCall));
                    } catch (Throwable th) {
                        r2(th);
                        x38Var.e(mi7Var);
                        x38Var.b(th);
                        return true;
                    }
                } else {
                    w38Var2.i(x38Var);
                }
                return true;
            } catch (Throwable th2) {
                r2(th2);
                x38Var.e(mi7Var);
                x38Var.b(th2);
                return true;
            }
        } catch (Throwable th3) {
            r2(th3);
            x38Var.e(mi7Var);
            x38Var.b(th3);
            return true;
        }
    }
}
