package com.google.android.gms.ads.internal.util;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import defpackage.aw2;
import defpackage.ax;
import defpackage.bi;
import defpackage.c20;
import defpackage.c50;
import defpackage.ds0;
import defpackage.en0;
import defpackage.i20;
import defpackage.is0;
import defpackage.jo;
import defpackage.l40;
import defpackage.lw2;
import defpackage.ms0;
import defpackage.ms2;
import defpackage.o40;
import defpackage.ob3;
import defpackage.or0;
import defpackage.os3;
import defpackage.q3;
import defpackage.q7;
import defpackage.u3;
import defpackage.u7;
import defpackage.w50;
import defpackage.w60;
import defpackage.xl0;
import defpackage.xw;
import defpackage.y40;
import defpackage.y50;
import defpackage.yw;
import defpackage.zr0;
import defpackage.zw;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzj {
    public static final ms2 zzegq = new zzg(Looper.getMainLooper());
    public String e;
    public AtomicReference<Pattern> a = new AtomicReference<>(null);
    public AtomicReference<Pattern> b = new AtomicReference<>(null);
    public boolean c = true;
    public final Object d = new Object();
    public boolean f = false;
    public boolean g = false;
    public final Executor h = Executors.newSingleThreadExecutor();

    public static Bundle a(Context context) {
        try {
            return i20.a(context).a(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zzd.zza("Error getting metadata", e);
            return null;
        }
    }

    public static boolean e(String str, AtomicReference<Pattern> atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern patternCompile = atomicReference.get();
            if (patternCompile == null || !str2.equals(patternCompile.pattern())) {
                patternCompile = Pattern.compile(str2);
                atomicReference.set(patternCompile);
            }
            return patternCompile.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static String f(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    public static String g() {
        StringBuilder sbW = jo.w(RecyclerView.a0.FLAG_TMP_DETACHED, "Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sbW.append(StringUtils.SPACE);
            sbW.append(str);
        }
        sbW.append("; ");
        sbW.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sbW.append("; ");
            sbW.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sbW.append(" Build/");
                sbW.append(str3);
            }
        }
        sbW.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sbW.toString();
    }

    public static AlertDialog.Builder zzaq(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static l40 zzar(Context context) {
        return new l40(context);
    }

    public static String zzas(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && (componentName = runningTaskInfo.topActivity) != null) {
                return componentName.getClassName();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean zzat(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return true;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    return !(powerManager == null ? false : powerManager.isScreenOn());
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int zzau(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    public static boolean zzaw(Context context) {
        if (context == null) {
            return false;
        }
        Object systemService = context.getSystemService("keyguard");
        KeyguardManager keyguardManager = (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
        return keyguardManager != null && keyguardManager.isKeyguardLocked();
    }

    public static boolean zzax(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            is0.zzc("Error loading class.", th);
            or0 or0VarZzkz = com.google.android.gms.ads.internal.zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static String zzay(Context context) {
        return !((Boolean) os3.j.f.a(y40.F3)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    public static Bundle zzaz(Context context) {
        if (!((Boolean) os3.j.f.a(y40.G3)).booleanValue()) {
            return null;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Bundle bundle = new Bundle();
        if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
            bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
        }
        String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
        for (int i = 0; i < 4; i++) {
            String str = strArr[i];
            if (defaultSharedPreferences.contains(str)) {
                bundle.putString(str, defaultSharedPreferences.getString(str, null));
            }
        }
        return bundle;
    }

    public static void zzb(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            new zzbq(context, str, (String) obj).zzyx();
        }
    }

    public static boolean zzba(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static String zzbb(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return f(a(context));
    }

    public static boolean zzbc(Context context) {
        Bundle bundleA = a(context);
        return TextUtils.isEmpty(f(bundleA)) && !TextUtils.isEmpty(bundleA.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
    }

    public static boolean zzbd(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static void zzbe(Context context) {
        if (bi.J()) {
            NotificationChannel notificationChannel = new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", 2);
            notificationChannel.setShowBadge(false);
            ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        }
    }

    public static boolean zzbf(Context context) {
        return new q7(context).a();
    }

    public static zzbg zzbg(Context context) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Object objNewInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(objNewInstance instanceof IBinder)) {
                is0.zzex("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) objNewInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return iInterfaceQueryLocalInterface instanceof zzbg ? (zzbg) iInterfaceQueryLocalInterface : new zzbi(iBinder);
        } catch (Exception e) {
            or0 or0VarZzkz = com.google.android.gms.ads.internal.zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static WebResourceResponse zzd(Context context, String str, String str2) throws ExecutionException, InterruptedException, TimeoutException {
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", com.google.android.gms.ads.internal.zzr.zzkv().zzq(context, str));
            map.put("Cache-Control", "max-stale=3600");
            String str3 = new zzay(context).zzb(str2, map).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            is0.zzd("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static int zzdl(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i <= 0) {
            return 60000;
        }
        StringBuilder sb = new StringBuilder(97);
        sb.append("HTTP timeout too low: ");
        sb.append(i);
        sb.append(" milliseconds. Reverting to default timeout: 60000 milliseconds.");
        is0.zzez(sb.toString());
        return 60000;
    }

    public static int zzei(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
            sb.append("Could not parse value:");
            sb.append(strValueOf);
            is0.zzez(sb.toString());
            return 0;
        }
    }

    public static boolean zzej(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static boolean zzem(String str) {
        if (!ds0.a()) {
            return false;
        }
        if (!((Boolean) os3.j.f.a(y40.P2)).booleanValue()) {
            return false;
        }
        String str2 = (String) os3.j.f.a(y40.R2);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) os3.j.f.a(y40.Q2);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static int[] zzf(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public static Map<String, String> zzg(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                map.put(str, uri.getQueryParameter(str));
            }
        }
        return map;
    }

    public static Bitmap zzm(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap zzn(android.view.View r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            boolean r1 = r6.isDrawingCacheEnabled()     // Catch: java.lang.RuntimeException -> L1e
            r2 = 1
            r6.setDrawingCacheEnabled(r2)     // Catch: java.lang.RuntimeException -> L1e
            android.graphics.Bitmap r2 = r6.getDrawingCache()     // Catch: java.lang.RuntimeException -> L1e
            if (r2 == 0) goto L17
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r2)     // Catch: java.lang.RuntimeException -> L1e
            goto L18
        L17:
            r2 = r0
        L18:
            r6.setDrawingCacheEnabled(r1)     // Catch: java.lang.RuntimeException -> L1c
            goto L25
        L1c:
            r1 = move-exception
            goto L20
        L1e:
            r1 = move-exception
            r2 = r0
        L20:
            java.lang.String r3 = "Fail to capture the web view"
            defpackage.is0.zzc(r3, r1)
        L25:
            if (r2 != 0) goto L5d
            int r1 = r6.getWidth()     // Catch: java.lang.RuntimeException -> L56
            int r2 = r6.getHeight()     // Catch: java.lang.RuntimeException -> L56
            if (r1 == 0) goto L50
            if (r2 != 0) goto L34
            goto L50
        L34:
            int r3 = r6.getWidth()     // Catch: java.lang.RuntimeException -> L56
            int r4 = r6.getHeight()     // Catch: java.lang.RuntimeException -> L56
            android.graphics.Bitmap$Config r5 = android.graphics.Bitmap.Config.RGB_565     // Catch: java.lang.RuntimeException -> L56
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r3, r4, r5)     // Catch: java.lang.RuntimeException -> L56
            android.graphics.Canvas r4 = new android.graphics.Canvas     // Catch: java.lang.RuntimeException -> L56
            r4.<init>(r3)     // Catch: java.lang.RuntimeException -> L56
            r5 = 0
            r6.layout(r5, r5, r1, r2)     // Catch: java.lang.RuntimeException -> L56
            r6.draw(r4)     // Catch: java.lang.RuntimeException -> L56
            r0 = r3
            goto L5c
        L50:
            java.lang.String r6 = "Width or height of view is zero"
            defpackage.is0.zzez(r6)     // Catch: java.lang.RuntimeException -> L56
            goto L5c
        L56:
            r6 = move-exception
            java.lang.String r1 = "Fail to capture the webview"
            defpackage.is0.zzc(r1, r6)
        L5c:
            r2 = r0
        L5d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzn(android.view.View):android.graphics.Bitmap");
    }

    public static boolean zzp(Context context, String str) {
        Context contextA = en0.a(context);
        return i20.a(contextA).a.getPackageManager().checkPermission(str, contextA.getPackageName()) == 0;
    }

    public static int zzr(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public static boolean zzs(View view) {
        if (view == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof ScrollView)) {
            parent = parent.getParent();
        }
        return parent != null;
    }

    public static String zzzr() {
        return UUID.randomUUID().toString();
    }

    public static String zzzs() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        return jo.c(str2.length() + jo.x(str, 1), str, StringUtils.SPACE, str2);
    }

    public static String zzzu() {
        Resources resourcesA = com.google.android.gms.ads.internal.zzr.zzkz().a();
        return resourcesA != null ? resourcesA.getString(com.google.android.gms.ads.impl.R.string.s7) : "Test Ad";
    }

    public final JSONArray b(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            c(jSONArray, it.next());
        }
        return jSONArray;
    }

    public final void c(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(zzc((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(zzj((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(b((Collection) obj));
            return;
        }
        if (!(obj instanceof Object[])) {
            jSONArray.put(obj);
            return;
        }
        JSONArray jSONArray2 = new JSONArray();
        for (Object obj2 : (Object[]) obj) {
            c(jSONArray2, obj2);
        }
        jSONArray.put(jSONArray2);
    }

    public final void d(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzc((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, zzj((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, b((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, b(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int iZzdl = zzdl(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(iZzdl);
        sb.append(" milliseconds.");
        is0.zzey(sb.toString());
        httpURLConnection.setConnectTimeout(iZzdl);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(iZzdl);
        httpURLConnection.setRequestProperty("User-Agent", zzq(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zzan(Context context) {
        if (this.f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new ax(this, null), intentFilter);
        this.f = true;
        return true;
    }

    public final boolean zzao(Context context) {
        if (this.g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new yw(this), intentFilter);
        this.g = true;
        return true;
    }

    public final JSONObject zzc(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            d(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final boolean zzek(String str) {
        return e(str, this.a, (String) os3.j.f.a(y40.U));
    }

    public final boolean zzel(String str) {
        return e(str, this.b, (String) os3.j.f.a(y40.V));
    }

    public final aw2<Map<String, String>> zzh(final Uri uri) {
        Callable callable = new Callable(uri) { // from class: vw
            public final Uri e;

            {
                this.e = uri;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = this.e;
                ms2 ms2Var = zzj.zzegq;
                zzr.zzkv();
                return zzj.zzg(uri2);
            }
        };
        Executor executor = this.h;
        lw2 lw2Var = new lw2(callable);
        executor.execute(lw2Var);
        return lw2Var;
    }

    public final JSONObject zzj(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                d(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String strValueOf = String.valueOf(e.getMessage());
            throw new JSONException(strValueOf.length() != 0 ? "Could not convert map to JSON: ".concat(strValueOf) : new String("Could not convert map to JSON: "));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a9 A[Catch: Exception -> 0x00b8, all -> 0x00da, TRY_LEAVE, TryCatch #3 {Exception -> 0x00b8, blocks: (B:33:0x009f, B:35:0x00a9), top: B:52:0x009f, outer: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzq(android.content.Context r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.d
            monitor-enter(r0)
            java.lang.String r1 = r4.e     // Catch: java.lang.Throwable -> Lda
            if (r1 == 0) goto L9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            return r1
        L9:
            if (r6 != 0) goto L11
            java.lang.String r5 = g()     // Catch: java.lang.Throwable -> Lda
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            return r5
        L11:
            com.google.android.gms.ads.internal.util.zzr r1 = com.google.android.gms.ads.internal.zzr.zzkx()     // Catch: java.lang.Exception -> L1b java.lang.Throwable -> Lda
            java.lang.String r1 = r1.getDefaultUserAgent(r5)     // Catch: java.lang.Exception -> L1b java.lang.Throwable -> Lda
            r4.e = r1     // Catch: java.lang.Exception -> L1b java.lang.Throwable -> Lda
        L1b:
            java.lang.String r1 = r4.e     // Catch: java.lang.Throwable -> Lda
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lda
            if (r1 == 0) goto L78
            os3 r1 = defpackage.os3.j     // Catch: java.lang.Throwable -> Lda
            zr0 r1 = r1.a     // Catch: java.lang.Throwable -> Lda
            boolean r1 = defpackage.zr0.f()     // Catch: java.lang.Throwable -> Lda
            if (r1 != 0) goto L64
            r1 = 0
            r4.e = r1     // Catch: java.lang.Throwable -> Lda
            ms2 r1 = com.google.android.gms.ads.internal.util.zzj.zzegq     // Catch: java.lang.Throwable -> Lda
            ww r2 = new ww     // Catch: java.lang.Throwable -> Lda
            r2.<init>(r4, r5)     // Catch: java.lang.Throwable -> Lda
            r1.post(r2)     // Catch: java.lang.Throwable -> Lda
        L3a:
            java.lang.String r1 = r4.e     // Catch: java.lang.Throwable -> Lda
            if (r1 != 0) goto L78
            java.lang.Object r1 = r4.d     // Catch: java.lang.InterruptedException -> L44 java.lang.Throwable -> Lda
            r1.wait()     // Catch: java.lang.InterruptedException -> L44 java.lang.Throwable -> Lda
            goto L3a
        L44:
            java.lang.String r1 = g()     // Catch: java.lang.Throwable -> Lda
            r4.e = r1     // Catch: java.lang.Throwable -> Lda
            java.lang.String r2 = "Interrupted, use default user agent: "
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Lda
            int r3 = r1.length()     // Catch: java.lang.Throwable -> Lda
            if (r3 == 0) goto L5b
            java.lang.String r1 = r2.concat(r1)     // Catch: java.lang.Throwable -> Lda
            goto L60
        L5b:
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Throwable -> Lda
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lda
        L60:
            defpackage.is0.zzez(r1)     // Catch: java.lang.Throwable -> Lda
            goto L3a
        L64:
            android.webkit.WebView r1 = new android.webkit.WebView     // Catch: java.lang.Throwable -> L72
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L72
            android.webkit.WebSettings r1 = r1.getSettings()     // Catch: java.lang.Throwable -> L72
            java.lang.String r1 = r1.getUserAgentString()     // Catch: java.lang.Throwable -> L72
            goto L76
        L72:
            java.lang.String r1 = g()     // Catch: java.lang.Throwable -> Lda
        L76:
            r4.e = r1     // Catch: java.lang.Throwable -> Lda
        L78:
            java.lang.String r1 = r4.e     // Catch: java.lang.Throwable -> Lda
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Lda
            int r2 = r1.length()     // Catch: java.lang.Throwable -> Lda
            int r2 = r2 + 10
            int r3 = r6.length()     // Catch: java.lang.Throwable -> Lda
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lda
            r3.<init>(r2)     // Catch: java.lang.Throwable -> Lda
            r3.append(r1)     // Catch: java.lang.Throwable -> Lda
            java.lang.String r1 = " (Mobile; "
            r3.append(r1)     // Catch: java.lang.Throwable -> Lda
            r3.append(r6)     // Catch: java.lang.Throwable -> Lda
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> Lda
            r4.e = r6     // Catch: java.lang.Throwable -> Lda
            h20 r5 = defpackage.i20.a(r5)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lda
            boolean r5 = r5.c()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lda
            if (r5 == 0) goto Lca
            java.lang.String r5 = r4.e     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lda
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lda
            java.lang.String r6 = ";aia"
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lda
            r4.e = r5     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lda
            goto Lca
        Lb8:
            r5 = move-exception
            or0 r6 = com.google.android.gms.ads.internal.zzr.zzkz()     // Catch: java.lang.Throwable -> Lda
            java.lang.String r1 = "AdUtil.getUserAgent"
            android.content.Context r2 = r6.e     // Catch: java.lang.Throwable -> Lda
            com.google.android.gms.internal.ads.zzbar r6 = r6.f     // Catch: java.lang.Throwable -> Lda
            bm0 r6 = defpackage.xl0.d(r2, r6)     // Catch: java.lang.Throwable -> Lda
            r6.a(r5, r1)     // Catch: java.lang.Throwable -> Lda
        Lca:
            java.lang.String r5 = r4.e     // Catch: java.lang.Throwable -> Lda
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> Lda
            java.lang.String r6 = ")"
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Throwable -> Lda
            r4.e = r5     // Catch: java.lang.Throwable -> Lda
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            return r5
        Lda:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzq(android.content.Context, java.lang.String):java.lang.String");
    }

    public static AlertDialog.Builder zzc(Context context, int i) {
        return new AlertDialog.Builder(context, i);
    }

    public static int[] zzh(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArr = (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        return new int[]{os3.j.a.j(activity, iArr[0]), os3.j.a.j(activity, iArr[1])};
    }

    public static void zzb(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzb(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String string = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 26);
            sb.append("Opening ");
            sb.append(string);
            sb.append(" in a new browser.");
            is0.zzdz(sb.toString());
        } catch (ActivityNotFoundException e) {
            is0.zzc("No browser is found.", e);
        }
    }

    public static void zzc(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            ms0.a.execute(runnable);
        }
    }

    public static String zzr(Context context, String str) throws FileNotFoundException {
        try {
            FileInputStream fileInputStreamOpenFileInput = context.openFileInput(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bi.n0(fileInputStreamOpenFileInput, byteArrayOutputStream, true);
            return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        } catch (IOException unused) {
            is0.zzdz("Error reading from internal storage.");
            return "";
        }
    }

    public static int[] zzg(Activity activity) {
        int[] iArrZzf = zzf(activity);
        return new int[]{os3.j.a.j(activity, iArrZzf[0]), os3.j.a.j(activity, iArrZzf[1])};
    }

    public static void zzc(Context context, String str, String str2) throws IOException {
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(str, 0);
            fileOutputStreamOpenFileOutput.write(str2.getBytes("UTF-8"));
            fileOutputStreamOpenFileOutput.close();
        } catch (Exception e) {
            is0.zzc("Error writing to file in internal storage.", e);
        }
    }

    public final y50 zza(Context context, Uri uri) {
        y50 y50Var;
        String strD3;
        if (context == null) {
            zzd.zzed("Trying to open chrome custom tab on a null context");
            y50Var = y50.CONTEXT_NULL;
        } else if (!(context instanceof Activity)) {
            zzd.zzed("Chrome Custom Tabs can only work with Activity context.");
            y50Var = y50.CONTEXT_NOT_AN_ACTIVITY;
        } else if (c50.D3(context) == null) {
            zzd.zzed("Default browser does not support custom tabs.");
            y50Var = y50.CCT_NOT_SUPPORTED;
        } else {
            y50Var = null;
        }
        o40<Boolean> o40Var = y40.z2;
        Boolean bool = (Boolean) os3.j.f.a(o40Var);
        o40<Boolean> o40Var2 = y40.A2;
        if (bool.equals(os3.j.f.a(o40Var2))) {
            y50Var = y50.WRONG_EXP_SETUP;
        }
        if (y50Var != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return y50Var;
        }
        if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
            w50 w50Var = new w50();
            w50Var.d = new xw(w50Var, context, uri);
            Activity activity = (Activity) context;
            if (w50Var.b == null && (strD3 = c50.D3(activity)) != null) {
                ob3 ob3Var = new ob3(w50Var);
                w50Var.c = ob3Var;
                ob3Var.a = activity.getApplicationContext();
                Intent intent2 = new Intent("android.support.customtabs.action.CustomTabsService");
                if (!TextUtils.isEmpty(strD3)) {
                    intent2.setPackage(strD3);
                }
                activity.bindService(intent2, ob3Var, 33);
            }
        }
        if (((Boolean) os3.j.f.a(o40Var2)).booleanValue()) {
            Intent intent3 = new Intent("android.intent.action.VIEW");
            q3 q3Var = new q3();
            if (!intent3.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                intent3.putExtras(bundle);
            }
            intent3.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
            Integer num = q3Var.a;
            Bundle bundle2 = new Bundle();
            if (num != null) {
                bundle2.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
            }
            intent3.putExtras(bundle2);
            intent3.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            u3 u3Var = new u3(intent3, null);
            u3Var.a.setData(uri);
            Intent intent4 = u3Var.a;
            Bundle bundle3 = u3Var.b;
            Object obj = u7.a;
            context.startActivity(intent4, bundle3);
        }
        return y50.CCT_READY_TO_OPEN;
    }

    public static WebResourceResponse zzd(HttpURLConnection httpURLConnection) throws IOException {
        com.google.android.gms.ads.internal.zzr.zzkv();
        String contentType = httpURLConnection.getContentType();
        String strTrim = "";
        String strTrim2 = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        com.google.android.gms.ads.internal.zzr.zzkv();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] strArrSplit = contentType2.split(";");
            if (strArrSplit.length != 1) {
                int i = 1;
                while (true) {
                    if (i >= strArrSplit.length) {
                        break;
                    }
                    if (strArrSplit[i].trim().startsWith("charset")) {
                        String[] strArrSplit2 = strArrSplit[i].trim().split("=");
                        if (strArrSplit2.length > 1) {
                            strTrim = strArrSplit2[1].trim();
                            break;
                        }
                    }
                    i++;
                }
            }
        }
        String str = strTrim;
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap map = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                map.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return com.google.android.gms.ads.internal.zzr.zzkx().zza(strTrim2, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), map, httpURLConnection.getInputStream());
    }

    public static void zzb(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder("android.support.customtabs.extra.SESSION", null);
        extras.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(extras);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzq(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 == 0) goto L12
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L12
            android.app.Activity r2 = (android.app.Activity) r2
            goto L13
        L12:
            r2 = r0
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzq(android.view.View):boolean");
    }

    public static String zza(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder(RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
        char[] cArr = new char[RecyclerView.a0.FLAG_MOVED];
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (i != -1) {
                sb.append(cArr, 0, i);
            } else {
                return sb.toString();
            }
        }
    }

    public static boolean zza(ClassLoader classLoader, Class<?> cls, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (Class.forName(it.next(), false, classLoader).isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return zzc(bundle);
            } catch (JSONException e) {
                is0.zzc("Error converting Bundle to JSON", e);
            }
        }
        return null;
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzr.zzkv();
        bundle.putString("device", zzzs());
        bundle.putString("eids", TextUtils.join(",", y40.b()));
        zr0 zr0Var = os3.j.a;
        zr0.c(context, str, str2, bundle, new zw(context, str));
    }

    public static void zza(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        KeyguardManager keyguardManager = null;
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return zza(view, powerManager, keyguardManager);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zza(android.view.View r3, android.os.PowerManager r4, android.app.KeyguardManager r5) {
        /*
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
            boolean r0 = r0.c
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L1d
            if (r5 != 0) goto Le
            r5 = 0
            goto L12
        Le:
            boolean r5 = r5.inKeyguardRestrictedInputMode()
        L12:
            if (r5 == 0) goto L1d
            boolean r5 = zzq(r3)
            if (r5 == 0) goto L1b
            goto L1d
        L1b:
            r5 = 0
            goto L1e
        L1d:
            r5 = 1
        L1e:
            int r0 = r3.getVisibility()
            if (r0 != 0) goto L63
            boolean r0 = r3.isShown()
            if (r0 == 0) goto L63
            if (r4 == 0) goto L35
            boolean r4 = r4.isScreenOn()
            if (r4 == 0) goto L33
            goto L35
        L33:
            r4 = 0
            goto L36
        L35:
            r4 = 1
        L36:
            if (r4 == 0) goto L63
            if (r5 == 0) goto L63
            o40<java.lang.Boolean> r4 = defpackage.y40.O0
            os3 r5 = defpackage.os3.j
            u40 r5 = r5.f
            java.lang.Object r4 = r5.a(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L62
            android.graphics.Rect r4 = new android.graphics.Rect
            r4.<init>()
            boolean r4 = r3.getLocalVisibleRect(r4)
            if (r4 != 0) goto L62
            android.graphics.Rect r4 = new android.graphics.Rect
            r4.<init>()
            boolean r3 = r3.getGlobalVisibleRect(r4)
            if (r3 == 0) goto L63
        L62:
            return r1
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zza(android.view.View, android.os.PowerManager, android.app.KeyguardManager):boolean");
    }

    public static void zza(Context context, Throwable th) {
        if (context == null) {
            return;
        }
        boolean zBooleanValue = false;
        try {
            zBooleanValue = w60.b.a().booleanValue();
        } catch (IllegalStateException unused) {
        }
        if (zBooleanValue) {
            c20.a(context, th);
        }
    }

    public static void zza(DownloadManager.Request request) {
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
    }
}
