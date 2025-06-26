package defpackage;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.icu.text.DecimalFormatSymbols;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.LocaleList;
import android.os.OperationCanceledException;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.Process;
import android.os.StrictMode;
import android.support.v4.media.MediaBrowserCompat;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Property;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$color;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.core.R$attr;
import androidx.core.R$styleable;
import androidx.recyclerview.widget.RecyclerView;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.c8;
import defpackage.j1;
import defpackage.n0;
import defpackage.n9;
import defpackage.p1;
import defpackage.v0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.lang3.time.DateUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class d0 extends c0 implements j1.a, LayoutInflater.Factory2 {
    public static final m4<String, Integer> d0 = new m4<>();
    public static final int[] e0 = {R.attr.windowBackground};
    public static final boolean f0 = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean g0 = true;
    public View A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public j[] J;
    public j K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public int Q;
    public int R;
    public boolean S;
    public boolean T;
    public f U;
    public f V;
    public boolean W;
    public int X;
    public boolean Z;
    public Rect a0;
    public Rect b0;
    public k0 c0;
    public final Object g;
    public final Context h;
    public Window i;
    public d j;
    public final b0 k;
    public u l;
    public MenuInflater m;
    public CharSequence n;
    public k2 o;
    public b p;
    public k q;
    public v0 r;
    public ActionBarContextView s;
    public PopupWindow t;
    public Runnable u;
    public boolean x;
    public ViewGroup y;
    public TextView z;
    public ma v = null;
    public boolean w = true;
    public final Runnable Y = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0 d0Var = d0.this;
            if ((d0Var.X & 1) != 0) {
                d0Var.I(0);
            }
            d0 d0Var2 = d0.this;
            if ((d0Var2.X & RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0) {
                d0Var2.I(108);
            }
            d0 d0Var3 = d0.this;
            d0Var3.W = false;
            d0Var3.X = 0;
        }
    }

    public final class b implements p1.a {
        public b() {
        }

        @Override // p1.a
        public void b(j1 j1Var, boolean z) {
            d0.this.E(j1Var);
        }

        @Override // p1.a
        public boolean c(j1 j1Var) {
            Window.Callback callbackP = d0.this.P();
            if (callbackP == null) {
                return true;
            }
            callbackP.onMenuOpened(108, j1Var);
            return true;
        }
    }

    public class c implements v0.a {
        public v0.a a;

        public class a extends oa {
            public a() {
            }

            @Override // defpackage.na
            public void b(View view) {
                d0.this.s.setVisibility(8);
                d0 d0Var = d0.this;
                PopupWindow popupWindow = d0Var.t;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (d0Var.s.getParent() instanceof View) {
                    View view2 = (View) d0.this.s.getParent();
                    AtomicInteger atomicInteger = ha.a;
                    view2.requestApplyInsets();
                }
                d0.this.s.removeAllViews();
                d0.this.v.d(null);
                d0 d0Var2 = d0.this;
                d0Var2.v = null;
                ViewGroup viewGroup = d0Var2.y;
                AtomicInteger atomicInteger2 = ha.a;
                viewGroup.requestApplyInsets();
            }
        }

        public c(v0.a aVar) {
            this.a = aVar;
        }

        @Override // v0.a
        public void a(v0 v0Var) {
            this.a.a(v0Var);
            d0 d0Var = d0.this;
            if (d0Var.t != null) {
                d0Var.i.getDecorView().removeCallbacks(d0.this.u);
            }
            d0 d0Var2 = d0.this;
            if (d0Var2.s != null) {
                d0Var2.J();
                d0 d0Var3 = d0.this;
                ma maVarB = ha.b(d0Var3.s);
                maVarB.a(0.0f);
                d0Var3.v = maVarB;
                ma maVar = d0.this.v;
                a aVar = new a();
                View view = maVar.a.get();
                if (view != null) {
                    maVar.e(view, aVar);
                }
            }
            d0 d0Var4 = d0.this;
            b0 b0Var = d0Var4.k;
            if (b0Var != null) {
                b0Var.e(d0Var4.r);
            }
            d0 d0Var5 = d0.this;
            d0Var5.r = null;
            ViewGroup viewGroup = d0Var5.y;
            AtomicInteger atomicInteger = ha.a;
            viewGroup.requestApplyInsets();
        }

        @Override // v0.a
        public boolean b(v0 v0Var, Menu menu) {
            return this.a.b(v0Var, menu);
        }

        @Override // v0.a
        public boolean c(v0 v0Var, Menu menu) {
            ViewGroup viewGroup = d0.this.y;
            AtomicInteger atomicInteger = ha.a;
            viewGroup.requestApplyInsets();
            return this.a.c(v0Var, menu);
        }

        @Override // v0.a
        public boolean d(v0 v0Var, MenuItem menuItem) {
            return this.a.d(v0Var, menuItem);
        }
    }

    public class e extends f {
        public final PowerManager c;

        public e(Context context) {
            super();
            this.c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // d0.f
        public IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // d0.f
        public int c() {
            return this.c.isPowerSaveMode() ? 2 : 1;
        }

        @Override // d0.f
        public void d() {
            d0.this.A();
        }
    }

    public abstract class f {
        public BroadcastReceiver a;

        public class a extends BroadcastReceiver {
            public a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                f.this.d();
            }
        }

        public f() {
        }

        public void a() {
            BroadcastReceiver broadcastReceiver = this.a;
            if (broadcastReceiver != null) {
                try {
                    d0.this.h.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.a = null;
            }
        }

        public abstract IntentFilter b();

        public abstract int c();

        public abstract void d();

        public void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.a == null) {
                this.a = new a();
            }
            d0.this.h.registerReceiver(this.a, intentFilterB);
        }
    }

    public class g extends f {
        public final n0 c;

        public g(n0 n0Var) {
            super();
            this.c = n0Var;
        }

        @Override // d0.f
        public IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // d0.f
        public int c() {
            boolean z;
            long j;
            n0 n0Var = this.c;
            n0.a aVar = n0Var.c;
            if (aVar.b > System.currentTimeMillis()) {
                z = aVar.a;
            } else {
                Location locationA = h.j(n0Var.a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? n0Var.a("network") : null;
                Location locationA2 = h.j(n0Var.a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? n0Var.a("gps") : null;
                if (locationA2 == null || locationA == null ? locationA2 != null : locationA2.getTime() > locationA.getTime()) {
                    locationA = locationA2;
                }
                if (locationA != null) {
                    n0.a aVar2 = n0Var.c;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (m0.d == null) {
                        m0.d = new m0();
                    }
                    m0 m0Var = m0.d;
                    m0Var.a(jCurrentTimeMillis - DateUtils.MILLIS_PER_DAY, locationA.getLatitude(), locationA.getLongitude());
                    m0Var.a(jCurrentTimeMillis, locationA.getLatitude(), locationA.getLongitude());
                    boolean z2 = m0Var.c == 1;
                    long j2 = m0Var.b;
                    long j3 = m0Var.a;
                    m0Var.a(jCurrentTimeMillis + DateUtils.MILLIS_PER_DAY, locationA.getLatitude(), locationA.getLongitude());
                    long j4 = m0Var.b;
                    if (j2 == -1 || j3 == -1) {
                        j = 43200000 + jCurrentTimeMillis;
                    } else {
                        j = (jCurrentTimeMillis > j3 ? j4 + 0 : jCurrentTimeMillis > j2 ? j3 + 0 : j2 + 0) + DateUtils.MILLIS_PER_MINUTE;
                    }
                    aVar2.a = z2;
                    aVar2.b = j;
                    z = aVar.a;
                } else {
                    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                    int i = Calendar.getInstance().get(11);
                    z = i < 6 || i >= 22;
                }
            }
            return z ? 2 : 1;
        }

        @Override // d0.f
        public void d() {
            d0.this.A();
        }
    }

    public static class h {
        public static Field a;
        public static boolean b;
        public static Class<?> c;
        public static boolean d;
        public static Field e;
        public static boolean f;
        public static Field g;
        public static boolean h;
        public static Method i;
        public static boolean j;
        public static Method k;
        public static boolean l;
        public static Field m;
        public static boolean n;
        public static Method o;
        public static boolean p;
        public static Field q;
        public static boolean r;

        public static Drawable A(CompoundButton compoundButton) throws NoSuchFieldException {
            if (Build.VERSION.SDK_INT >= 23) {
                return compoundButton.getButtonDrawable();
            }
            if (!n) {
                try {
                    Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                    m = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e2);
                }
                n = true;
            }
            Field field = m;
            if (field != null) {
                try {
                    return (Drawable) field.get(compoundButton);
                } catch (IllegalAccessException e3) {
                    Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e3);
                    m = null;
                }
            }
            return null;
        }

        public static int B(Cursor cursor, String str) {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex >= 0) {
                return columnIndex;
            }
            return cursor.getColumnIndexOrThrow("`" + str + "`");
        }

        public static int C(Drawable drawable) throws NoSuchMethodException, SecurityException {
            if (Build.VERSION.SDK_INT >= 23) {
                return drawable.getLayoutDirection();
            }
            if (!l) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                    k = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e2);
                }
                l = true;
            }
            Method method = k;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(drawable, new Object[0])).intValue();
                } catch (Exception e3) {
                    Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e3);
                    k = null;
                }
            }
            return 0;
        }

        public static String D() {
            StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
            StringBuilder sbZ = jo.z(".(");
            sbZ.append(stackTraceElement.getFileName());
            sbZ.append(":");
            sbZ.append(stackTraceElement.getLineNumber());
            sbZ.append(")");
            return sbZ.toString();
        }

        public static String E(Context context, int i2) {
            if (i2 == -1) {
                return "UNKNOWN";
            }
            try {
                return context.getResources().getResourceEntryName(i2);
            } catch (Exception unused) {
                return jo.g("?", i2);
            }
        }

        public static String F(View view) {
            try {
                return view.getContext().getResources().getResourceEntryName(view.getId());
            } catch (Exception unused) {
                return "UNKNOWN";
            }
        }

        public static Intent G(Activity activity) {
            Intent parentActivityIntent = activity.getParentActivityIntent();
            if (parentActivityIntent != null) {
                return parentActivityIntent;
            }
            try {
                String strI = I(activity, activity.getComponentName());
                if (strI == null) {
                    return null;
                }
                ComponentName componentName = new ComponentName(activity, strI);
                try {
                    return I(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strI + "' in manifest");
                    return null;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                throw new IllegalArgumentException(e2);
            }
        }

        public static Intent H(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
            String strI = I(context, componentName);
            if (strI == null) {
                return null;
            }
            ComponentName componentName2 = new ComponentName(componentName.getPackageName(), strI);
            return I(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
        }

        public static String I(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
            String string;
            PackageManager packageManager = context.getPackageManager();
            int i2 = Build.VERSION.SDK_INT;
            int i3 = 640;
            if (i2 >= 29) {
                i3 = 269222528;
            } else if (i2 >= 24) {
                i3 = 787072;
            }
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i3);
            String str = activityInfo.parentActivityName;
            if (str != null) {
                return str;
            }
            Bundle bundle = activityInfo.metaData;
            if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
                return null;
            }
            if (string.charAt(0) != '.') {
                return string;
            }
            return context.getPackageName() + string;
        }

        public static String J(MotionLayout motionLayout, int i2) {
            return i2 == -1 ? "UNDEFINED" : motionLayout.getContext().getResources().getResourceEntryName(i2);
        }

        public static File K(Context context) {
            File cacheDir = context.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            StringBuilder sbZ = jo.z(".font");
            sbZ.append(Process.myPid());
            sbZ.append("-");
            sbZ.append(Process.myTid());
            sbZ.append("-");
            String string = sbZ.toString();
            for (int i2 = 0; i2 < 100; i2++) {
                File file = new File(cacheDir, jo.g(string, i2));
                if (file.createNewFile()) {
                    return file;
                }
            }
            return null;
        }

        public static n9.a L(TextView textView) {
            int breakStrategy;
            int hyphenationFrequency;
            TextDirectionHeuristic textDirectionHeuristic;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                return new n9.a(textView.getTextMetricsParams());
            }
            TextPaint textPaint = new TextPaint(textView.getPaint());
            if (Build.VERSION.SDK_INT >= 23) {
                breakStrategy = 1;
                hyphenationFrequency = 1;
            } else {
                breakStrategy = 0;
                hyphenationFrequency = 0;
            }
            TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            if (i2 >= 23) {
                breakStrategy = textView.getBreakStrategy();
                hyphenationFrequency = textView.getHyphenationFrequency();
            }
            if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            } else if (i2 < 28 || (textView.getInputType() & 15) != 3) {
                boolean z = textView.getLayoutDirection() == 1;
                switch (textView.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (!z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                            break;
                        } else {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                }
            } else {
                byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            }
            return new n9.a(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
        }

        public static boolean M(Rect rect, Rect rect2, int i2) {
            if (i2 == 17) {
                int i3 = rect.right;
                int i4 = rect2.right;
                return (i3 > i4 || rect.left >= i4) && rect.left > rect2.left;
            }
            if (i2 == 33) {
                int i5 = rect.bottom;
                int i6 = rect2.bottom;
                return (i5 > i6 || rect.top >= i6) && rect.top > rect2.top;
            }
            if (i2 == 66) {
                int i7 = rect.left;
                int i8 = rect2.left;
                return (i7 < i8 || rect.right <= i8) && rect.right < rect2.right;
            }
            if (i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            int i9 = rect.top;
            int i10 = rect2.top;
            return (i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom;
        }

        public static boolean N(NotificationManager notificationManager, String str) {
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
            return notificationChannel == null || notificationChannel.getImportance() != 0;
        }

        public static int O(int i2, Rect rect, Rect rect2) {
            int i3;
            int i4;
            if (i2 == 17) {
                i3 = rect.left;
                i4 = rect2.right;
            } else if (i2 == 33) {
                i3 = rect.top;
                i4 = rect2.bottom;
            } else if (i2 == 66) {
                i3 = rect2.left;
                i4 = rect.right;
            } else {
                if (i2 != 130) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                }
                i3 = rect2.top;
                i4 = rect.bottom;
            }
            return Math.max(0, i3 - i4);
        }

        public static int P(int i2, Rect rect, Rect rect2) {
            if (i2 != 17) {
                if (i2 != 33) {
                    if (i2 != 66) {
                        if (i2 != 130) {
                            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        }
                    }
                }
                return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
            }
            return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
        }

        public static ByteBuffer Q(Context context, CancellationSignal cancellationSignal, Uri uri) throws IOException {
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    try {
                        FileChannel channel = fileInputStream.getChannel();
                        MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                        fileInputStream.close();
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return map;
                    } finally {
                    }
                } finally {
                }
            } catch (IOException unused) {
                return null;
            }
        }

        public static <T> ObjectAnimator R(T t, Property<T, PointF> property, Path path) {
            return ObjectAnimator.ofObject(t, property, (TypeConverter) null, path);
        }

        public static InputConnection S(InputConnection inputConnection, EditorInfo editorInfo, View view) {
            if (inputConnection != null && editorInfo.hintText == null) {
                ViewParent parent = view.getParent();
                while (true) {
                    if (!(parent instanceof View)) {
                        break;
                    }
                    if (parent instanceof j3) {
                        editorInfo.hintText = ((j3) parent).a();
                        break;
                    }
                    parent = parent.getParent();
                }
            }
            return inputConnection;
        }

        public static w7 T(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
            int next;
            do {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            xmlPullParser.require(2, null, "font-family");
            if (!xmlPullParser.getName().equals("font-family")) {
                i0(xmlPullParser);
                return null;
            }
            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamily);
            String string = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderAuthority);
            String string2 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderPackage);
            String string3 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderQuery);
            int resourceId = typedArrayObtainAttributes.getResourceId(R$styleable.FontFamily_fontProviderCerts, 0);
            int integer = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchStrategy, 1);
            int integer2 = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchTimeout, 500);
            typedArrayObtainAttributes.recycle();
            if (string != null && string2 != null && string3 != null) {
                while (xmlPullParser.next() != 3) {
                    i0(xmlPullParser);
                }
                return new z7(new f9(string, string2, string3, V(resources, resourceId)), integer, integer2);
            }
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamilyFont);
                        int i2 = R$styleable.FontFamilyFont_fontWeight;
                        if (!typedArrayObtainAttributes2.hasValue(i2)) {
                            i2 = R$styleable.FontFamilyFont_android_fontWeight;
                        }
                        int i3 = typedArrayObtainAttributes2.getInt(i2, 400);
                        int i4 = R$styleable.FontFamilyFont_fontStyle;
                        if (!typedArrayObtainAttributes2.hasValue(i4)) {
                            i4 = R$styleable.FontFamilyFont_android_fontStyle;
                        }
                        boolean z = 1 == typedArrayObtainAttributes2.getInt(i4, 0);
                        int i5 = R$styleable.FontFamilyFont_ttcIndex;
                        if (!typedArrayObtainAttributes2.hasValue(i5)) {
                            i5 = R$styleable.FontFamilyFont_android_ttcIndex;
                        }
                        int i6 = R$styleable.FontFamilyFont_fontVariationSettings;
                        if (!typedArrayObtainAttributes2.hasValue(i6)) {
                            i6 = R$styleable.FontFamilyFont_android_fontVariationSettings;
                        }
                        String string4 = typedArrayObtainAttributes2.getString(i6);
                        int i7 = typedArrayObtainAttributes2.getInt(i5, 0);
                        int i8 = R$styleable.FontFamilyFont_font;
                        if (!typedArrayObtainAttributes2.hasValue(i8)) {
                            i8 = R$styleable.FontFamilyFont_android_font;
                        }
                        int resourceId2 = typedArrayObtainAttributes2.getResourceId(i8, 0);
                        String string5 = typedArrayObtainAttributes2.getString(i8);
                        typedArrayObtainAttributes2.recycle();
                        while (xmlPullParser.next() != 3) {
                            i0(xmlPullParser);
                        }
                        arrayList.add(new y7(string5, i3, z, string4, i7, resourceId2));
                    } else {
                        i0(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new x7((y7[]) arrayList.toArray(new y7[arrayList.size()]));
        }

        public static Cursor U(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, w8 w8Var) throws Exception {
            Object obj;
            Object obj2;
            if (w8Var != null) {
                try {
                    synchronized (w8Var) {
                        if (w8Var.b == null) {
                            CancellationSignal cancellationSignal = new CancellationSignal();
                            w8Var.b = cancellationSignal;
                            if (w8Var.a) {
                                cancellationSignal.cancel();
                            }
                        }
                        obj = w8Var.b;
                    }
                    obj2 = obj;
                } catch (Exception e2) {
                    if (e2 instanceof OperationCanceledException) {
                        throw new b9();
                    }
                    throw e2;
                }
            } else {
                obj2 = null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) obj2);
        }

        public static List<List<byte[]>> V(Resources resources, int i2) throws Resources.NotFoundException {
            if (i2 == 0) {
                return Collections.emptyList();
            }
            TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i2);
            try {
                if (typedArrayObtainTypedArray.length() == 0) {
                    return Collections.emptyList();
                }
                ArrayList arrayList = new ArrayList();
                if (typedArrayObtainTypedArray.getType(0) == 1) {
                    for (int i3 = 0; i3 < typedArrayObtainTypedArray.length(); i3++) {
                        int resourceId = typedArrayObtainTypedArray.getResourceId(i3, 0);
                        if (resourceId != 0) {
                            arrayList.add(j0(resources.getStringArray(resourceId)));
                        }
                    }
                } else {
                    arrayList.add(j0(resources.getStringArray(i2)));
                }
                return arrayList;
            } finally {
                typedArrayObtainTypedArray.recycle();
            }
        }

        public static void W(TextView textView, int i2) {
            g(i2);
            if (Build.VERSION.SDK_INT >= 28) {
                textView.setFirstBaselineToTopHeight(i2);
                return;
            }
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            int i3 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
            if (i2 > Math.abs(i3)) {
                textView.setPadding(textView.getPaddingLeft(), i2 + i3, textView.getPaddingRight(), textView.getPaddingBottom());
            }
        }

        public static void X(TextView textView, int i2) {
            g(i2);
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            int i3 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
            if (i2 > Math.abs(i3)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i3);
            }
        }

        public static boolean Y(Drawable drawable, int i2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 23) {
                return drawable.setLayoutDirection(i2);
            }
            if (!j) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                    i = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e2);
                }
                j = true;
            }
            Method method = i;
            if (method != null) {
                try {
                    method.invoke(drawable, Integer.valueOf(i2));
                    return true;
                } catch (Exception e3) {
                    Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e3);
                    i = null;
                }
            }
            return false;
        }

        public static void Z(TextView textView, int i2) {
            g(i2);
            if (i2 != textView.getPaint().getFontMetricsInt(null)) {
                textView.setLineSpacing(i2 - r0, 1.0f);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:175:0x02c2  */
        /* JADX WARN: Removed duplicated region for block: B:195:0x0314  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x033e  */
        /* JADX WARN: Removed duplicated region for block: B:287:0x051d  */
        /* JADX WARN: Removed duplicated region for block: B:400:0x0726  */
        /* JADX WARN: Removed duplicated region for block: B:401:0x0729  */
        /* JADX WARN: Removed duplicated region for block: B:404:0x072f  */
        /* JADX WARN: Removed duplicated region for block: B:405:0x0732  */
        /* JADX WARN: Removed duplicated region for block: B:407:0x0736  */
        /* JADX WARN: Removed duplicated region for block: B:411:0x0745  */
        /* JADX WARN: Removed duplicated region for block: B:413:0x0748  */
        /* JADX WARN: Removed duplicated region for block: B:415:0x074e A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:424:0x076b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0121  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0147  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void a(defpackage.d6 r38, defpackage.u5 r39, int r40) {
            /*
                Method dump skipped, instructions count: 1913
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d0.h.a(d6, u5, int):void");
        }

        public static void a0(PopupWindow popupWindow, boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            if (Build.VERSION.SDK_INT >= 23) {
                popupWindow.setOverlapAnchor(z);
                return;
            }
            if (!r) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    q = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e2);
                }
                r = true;
            }
            Field field = q;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e3) {
                    Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e3);
                }
            }
        }

        public static boolean b(Bundle bundle, Bundle bundle2) {
            if (bundle == bundle2) {
                return true;
            }
            return bundle == null ? bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle2 == null ? bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        }

        public static void b0(TextView textView, n9 n9Var) {
            if (Build.VERSION.SDK_INT >= 29) {
                Objects.requireNonNull(n9Var);
                textView.setText((CharSequence) null);
                return;
            }
            n9.a aVarL = L(textView);
            Objects.requireNonNull(n9Var);
            if (!aVarL.a(null)) {
                throw new IllegalArgumentException("Given text can not be applied to TextView.");
            }
            textView.setText(n9Var);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0045  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean c(int r9, android.graphics.Rect r10, android.graphics.Rect r11, android.graphics.Rect r12) {
            /*
                boolean r0 = d(r9, r10, r11)
                boolean r1 = d(r9, r10, r12)
                r2 = 0
                if (r1 != 0) goto L7d
                if (r0 != 0) goto Lf
                goto L7d
            Lf:
                java.lang.String r0 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
                r1 = 130(0x82, float:1.82E-43)
                r3 = 33
                r4 = 66
                r5 = 17
                r6 = 1
                if (r9 == r5) goto L3d
                if (r9 == r3) goto L36
                if (r9 == r4) goto L2f
                if (r9 != r1) goto L29
                int r7 = r10.bottom
                int r8 = r12.top
                if (r7 > r8) goto L45
                goto L43
            L29:
                java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
                r9.<init>(r0)
                throw r9
            L2f:
                int r7 = r10.right
                int r8 = r12.left
                if (r7 > r8) goto L45
                goto L43
            L36:
                int r7 = r10.top
                int r8 = r12.bottom
                if (r7 < r8) goto L45
                goto L43
            L3d:
                int r7 = r10.left
                int r8 = r12.right
                if (r7 < r8) goto L45
            L43:
                r7 = 1
                goto L46
            L45:
                r7 = 0
            L46:
                if (r7 != 0) goto L49
                return r6
            L49:
                if (r9 == r5) goto L7c
                if (r9 != r4) goto L4e
                goto L7c
            L4e:
                int r11 = O(r9, r10, r11)
                if (r9 == r5) goto L6f
                if (r9 == r3) goto L6a
                if (r9 == r4) goto L65
                if (r9 != r1) goto L5f
                int r9 = r12.bottom
                int r10 = r10.bottom
                goto L73
            L5f:
                java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
                r9.<init>(r0)
                throw r9
            L65:
                int r9 = r12.right
                int r10 = r10.right
                goto L73
            L6a:
                int r9 = r10.top
                int r10 = r12.top
                goto L73
            L6f:
                int r9 = r10.left
                int r10 = r12.left
            L73:
                int r9 = r9 - r10
                int r9 = java.lang.Math.max(r6, r9)
                if (r11 >= r9) goto L7b
                r2 = 1
            L7b:
                return r2
            L7c:
                return r6
            L7d:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: d0.h.c(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
        }

        public static void c0(TextView textView, int i2) {
            if (Build.VERSION.SDK_INT >= 23) {
                textView.setTextAppearance(i2);
            } else {
                textView.setTextAppearance(textView.getContext(), i2);
            }
        }

        public static boolean d(int i2, Rect rect, Rect rect2) {
            if (i2 != 17) {
                if (i2 != 33) {
                    if (i2 != 66) {
                        if (i2 != 130) {
                            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        }
                    }
                }
                return rect2.right >= rect.left && rect2.left <= rect.right;
            }
            return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
        }

        public static void d0(Drawable drawable, int i2) {
            drawable.setTint(i2);
        }

        public static void e(Object obj, StringBuilder sb) {
            int iLastIndexOf;
            if (obj == null) {
                sb.append("null");
                return;
            }
            String simpleName = obj.getClass().getSimpleName();
            if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(iLastIndexOf + 1);
            }
            sb.append(simpleName);
            sb.append('{');
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }

        public static void e0(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        public static boolean f(f8[] f8VarArr, f8[] f8VarArr2) {
            if (f8VarArr == null || f8VarArr2 == null || f8VarArr.length != f8VarArr2.length) {
                return false;
            }
            for (int i2 = 0; i2 < f8VarArr.length; i2++) {
                if (f8VarArr[i2].a != f8VarArr2[i2].a || f8VarArr[i2].b.length != f8VarArr2[i2].b.length) {
                    return false;
                }
            }
            return true;
        }

        public static void f0(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }

        public static int g(int i2) {
            if (i2 >= 0) {
                return i2;
            }
            throw new IllegalArgumentException();
        }

        public static void g0(View view, CharSequence charSequence) {
            if (Build.VERSION.SDK_INT >= 26) {
                view.setTooltipText(charSequence);
                return;
            }
            f3 f3Var = f3.n;
            if (f3Var != null && f3Var.e == view) {
                f3.c(null);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                new f3(view, charSequence);
                return;
            }
            f3 f3Var2 = f3.o;
            if (f3Var2 != null && f3Var2.e == view) {
                f3Var2.b();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
        }

        public static <T> T h(T t, Object obj) {
            if (t != null) {
                return t;
            }
            throw new NullPointerException(String.valueOf(obj));
        }

        public static void h0(PopupWindow popupWindow, int i2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 23) {
                popupWindow.setWindowLayoutType(i2);
                return;
            }
            if (!p) {
                try {
                    Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                    o = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (Exception unused) {
                }
                p = true;
            }
            Method method = o;
            if (method != null) {
                try {
                    method.invoke(popupWindow, Integer.valueOf(i2));
                } catch (Exception unused2) {
                }
            }
        }

        public static int i(Context context, String str, int i2, int i3, String str2) {
            if (context.checkPermission(str, i2, i3) == -1) {
                return -1;
            }
            int i4 = Build.VERSION.SDK_INT;
            String strPermissionToOp = i4 >= 23 ? AppOpsManager.permissionToOp(str) : null;
            if (strPermissionToOp == null) {
                return 0;
            }
            if (str2 == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(i3);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                str2 = packagesForUid[0];
            }
            return (i4 >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(strPermissionToOp, str2) : 1) != 0 ? -2 : 0;
        }

        public static void i0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            int i2 = 1;
            while (i2 > 0) {
                int next = xmlPullParser.next();
                if (next == 2) {
                    i2++;
                } else if (next == 3) {
                    i2--;
                }
            }
        }

        public static int j(Context context, String str) {
            return i(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
        }

        public static List<byte[]> j0(String[] strArr) {
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                arrayList.add(Base64.decode(str, 0));
            }
            return arrayList;
        }

        public static float k(float f2, float f3, float f4) {
            return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <T extends Drawable> T k0(Drawable drawable) {
            return drawable instanceof p8 ? (T) ((p8) drawable).b() : drawable;
        }

        public static int l(int i2, int i3, int i4) {
            return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
        }

        public static Drawable l0(Drawable drawable) {
            return (Build.VERSION.SDK_INT < 23 && !(drawable instanceof o8)) ? new r8(drawable) : drawable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void m(Drawable drawable) {
            DrawableContainer.DrawableContainerState drawableContainerState;
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.clearColorFilter();
                return;
            }
            drawable.clearColorFilter();
            if (drawable instanceof InsetDrawable) {
                m(((InsetDrawable) drawable).getDrawable());
                return;
            }
            if (drawable instanceof p8) {
                m(((p8) drawable).b());
                return;
            }
            if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
                return;
            }
            int childCount = drawableContainerState.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                Drawable child = drawableContainerState.getChild(i2);
                if (child != null) {
                    m(child);
                }
            }
        }

        public static ActionMode.Callback m0(TextView textView, ActionMode.Callback callback) {
            int i2 = Build.VERSION.SDK_INT;
            return (i2 < 26 || i2 > 27 || (callback instanceof ab)) ? callback : new ab(callback, textView);
        }

        public static int n(RecyclerView.x xVar, wf wfVar, View view, View view2, RecyclerView.m mVar, boolean z) {
            if (mVar.y() == 0 || xVar.b() == 0 || view == null || view2 == null) {
                return 0;
            }
            if (!z) {
                return Math.abs(mVar.R(view) - mVar.R(view2)) + 1;
            }
            return Math.min(wfVar.l(), wfVar.b(view2) - wfVar.e(view));
        }

        public static int o(RecyclerView.x xVar, wf wfVar, View view, View view2, RecyclerView.m mVar, boolean z, boolean z2) {
            if (mVar.y() == 0 || xVar.b() == 0 || view == null || view2 == null) {
                return 0;
            }
            int iMax = z2 ? Math.max(0, (xVar.b() - Math.max(mVar.R(view), mVar.R(view2))) - 1) : Math.max(0, Math.min(mVar.R(view), mVar.R(view2)));
            if (z) {
                return Math.round((iMax * (Math.abs(wfVar.b(view2) - wfVar.e(view)) / (Math.abs(mVar.R(view) - mVar.R(view2)) + 1))) + (wfVar.k() - wfVar.e(view)));
            }
            return iMax;
        }

        public static int p(RecyclerView.x xVar, wf wfVar, View view, View view2, RecyclerView.m mVar, boolean z) {
            if (mVar.y() == 0 || xVar.b() == 0 || view == null || view2 == null) {
                return 0;
            }
            if (!z) {
                return xVar.b();
            }
            return (int) (((wfVar.b(view2) - wfVar.e(view)) / (Math.abs(mVar.R(view) - mVar.R(view2)) + 1)) * xVar.b());
        }

        public static float[] q(float[] fArr, int i2, int i3) {
            if (i2 > i3) {
                throw new IllegalArgumentException();
            }
            int length = fArr.length;
            if (i2 < 0 || i2 > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i4 = i3 - i2;
            int iMin = Math.min(i4, length - i2);
            float[] fArr2 = new float[i4];
            System.arraycopy(fArr, i2, fArr2, 0, iMin);
            return fArr2;
        }

        public static boolean r(File file, Resources resources, int i2) throws Throwable {
            InputStream inputStreamOpenRawResource;
            try {
                inputStreamOpenRawResource = resources.openRawResource(i2);
            } catch (Throwable th) {
                th = th;
                inputStreamOpenRawResource = null;
            }
            try {
                boolean zS = s(file, inputStreamOpenRawResource);
                if (inputStreamOpenRawResource != null) {
                    try {
                        inputStreamOpenRawResource.close();
                    } catch (IOException unused) {
                    }
                }
                return zS;
            } catch (Throwable th2) {
                th = th2;
                if (inputStreamOpenRawResource != null) {
                    try {
                        inputStreamOpenRawResource.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        }

        public static boolean s(File file, InputStream inputStream) throws Throwable {
            FileOutputStream fileOutputStream;
            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file, false);
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                }
                try {
                    fileOutputStream.close();
                } catch (IOException unused) {
                }
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                return true;
            } catch (IOException e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused2) {
                    }
                }
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                }
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                throw th;
            }
        }

        public static ColorStateList t(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
            int next;
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            do {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return u(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v17, types: [java.lang.Object, java.lang.Object[]] */
        public static ColorStateList u(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
            int depth;
            String name = xmlPullParser.getName();
            if (!name.equals("selector")) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
            }
            int i2 = 1;
            int depth2 = xmlPullParser.getDepth() + 1;
            int[][] iArr = new int[20][];
            int[] iArr2 = new int[20];
            int i3 = 0;
            while (true) {
                int next = xmlPullParser.next();
                if (next == i2 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                    break;
                }
                if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals(NSRSS20.ITEM)) {
                    int[] iArr3 = R$styleable.ColorStateListItem;
                    TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr3) : theme.obtainStyledAttributes(attributeSet, iArr3, 0, 0);
                    int color = typedArrayObtainAttributes.getColor(R$styleable.ColorStateListItem_android_color, -65281);
                    float f2 = 1.0f;
                    int i4 = R$styleable.ColorStateListItem_android_alpha;
                    if (typedArrayObtainAttributes.hasValue(i4)) {
                        f2 = typedArrayObtainAttributes.getFloat(i4, 1.0f);
                    } else {
                        int i5 = R$styleable.ColorStateListItem_alpha;
                        if (typedArrayObtainAttributes.hasValue(i5)) {
                            f2 = typedArrayObtainAttributes.getFloat(i5, 1.0f);
                        }
                    }
                    typedArrayObtainAttributes.recycle();
                    int attributeCount = attributeSet.getAttributeCount();
                    int[] iArr4 = new int[attributeCount];
                    int i6 = 0;
                    for (int i7 = 0; i7 < attributeCount; i7++) {
                        int attributeNameResource = attributeSet.getAttributeNameResource(i7);
                        if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R$attr.alpha) {
                            int i8 = i6 + 1;
                            if (!attributeSet.getAttributeBooleanValue(i7, false)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr4[i6] = attributeNameResource;
                            i6 = i8;
                        }
                    }
                    int[] iArrTrimStateSet = StateSet.trimStateSet(iArr4, i6);
                    int iRound = (Math.round(Color.alpha(color) * f2) << 24) | (color & 16777215);
                    int i9 = i3 + 1;
                    if (i9 > iArr2.length) {
                        int[] iArr5 = new int[i3 <= 4 ? 8 : i3 * 2];
                        System.arraycopy(iArr2, 0, iArr5, 0, i3);
                        iArr2 = iArr5;
                    }
                    iArr2[i3] = iRound;
                    if (i9 > iArr.length) {
                        ?? r8 = (Object[]) Array.newInstance(iArr.getClass().getComponentType(), i3 > 4 ? i3 * 2 : 8);
                        System.arraycopy(iArr, 0, r8, 0, i3);
                        iArr = r8;
                    }
                    iArr[i3] = iArrTrimStateSet;
                    iArr = iArr;
                    i3 = i9;
                }
                i2 = 1;
            }
            int[] iArr6 = new int[i3];
            int[][] iArr7 = new int[i3][];
            System.arraycopy(iArr2, 0, iArr6, 0, i3);
            System.arraycopy(iArr, 0, iArr7, 0, i3);
            return new ColorStateList(iArr7, iArr6);
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
        
            if (r13 == false) goto L42;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0098 A[Catch: NumberFormatException -> 0x00ba, LOOP:3: B:29:0x006d->B:49:0x0098, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00ba, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b2), top: B:71:0x005a }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x009d A[Catch: NumberFormatException -> 0x00ba, TryCatch #0 {NumberFormatException -> 0x00ba, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b2), top: B:71:0x005a }] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00ad A[Catch: NumberFormatException -> 0x00ba, TryCatch #0 {NumberFormatException -> 0x00ba, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b2), top: B:71:0x005a }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00d7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0097 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static defpackage.f8[] v(java.lang.String r16) {
            /*
                Method dump skipped, instructions count: 272
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d0.h.v(java.lang.String):f8[]");
        }

        public static Path w(String str) {
            Path path = new Path();
            f8[] f8VarArrV = v(str);
            if (f8VarArrV == null) {
                return null;
            }
            try {
                f8.b(f8VarArrV, path);
                return path;
            } catch (RuntimeException e2) {
                throw new RuntimeException(jo.n("Error in parsing ", str), e2);
            }
        }

        public static f8[] x(f8[] f8VarArr) {
            if (f8VarArr == null) {
                return null;
            }
            f8[] f8VarArr2 = new f8[f8VarArr.length];
            for (int i2 = 0; i2 < f8VarArr.length; i2++) {
                f8VarArr2[i2] = new f8(f8VarArr[i2]);
            }
            return f8VarArr2;
        }

        public static void y(Bundle bundle, String str) {
            if (!bundle.containsKey(str)) {
                throw new IllegalArgumentException(jo.n("Bundle must contain ", str));
            }
        }

        public static void z(Object obj) throws NoSuchFieldException {
            if (!d) {
                try {
                    c = Class.forName("android.content.res.ThemedResourceCache");
                } catch (ClassNotFoundException e2) {
                    Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
                }
                d = true;
            }
            Class<?> cls = c;
            if (cls == null) {
                return;
            }
            if (!f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
                }
                f = true;
            }
            Field field = e;
            if (field == null) {
                return;
            }
            LongSparseArray longSparseArray = null;
            try {
                longSparseArray = (LongSparseArray) field.get(obj);
            } catch (IllegalAccessException e4) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
            }
            if (longSparseArray != null) {
                longSparseArray.clear();
            }
        }
    }

    public class i extends ContentFrameLayout {
        public i(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return d0.this.H(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    d0 d0Var = d0.this;
                    d0Var.F(d0Var.O(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(p0.b(getContext(), i));
        }
    }

    public static final class j {
        public int a;
        public int b;
        public int c;
        public int d;
        public ViewGroup e;
        public View f;
        public View g;
        public j1 h;
        public h1 i;
        public Context j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;
        public boolean o = false;
        public boolean p;
        public Bundle q;

        public j(int i) {
            this.a = i;
        }

        public void a(j1 j1Var) {
            h1 h1Var;
            j1 j1Var2 = this.h;
            if (j1Var == j1Var2) {
                return;
            }
            if (j1Var2 != null) {
                j1Var2.u(this.i);
            }
            this.h = j1Var;
            if (j1Var == null || (h1Var = this.i) == null) {
                return;
            }
            j1Var.b(h1Var, j1Var.a);
        }
    }

    public final class k implements p1.a {
        public k() {
        }

        @Override // p1.a
        public void b(j1 j1Var, boolean z) {
            j1 j1VarK = j1Var.k();
            boolean z2 = j1VarK != j1Var;
            d0 d0Var = d0.this;
            if (z2) {
                j1Var = j1VarK;
            }
            j jVarM = d0Var.M(j1Var);
            if (jVarM != null) {
                if (!z2) {
                    d0.this.F(jVarM, z);
                } else {
                    d0.this.D(jVarM.a, jVarM, j1VarK);
                    d0.this.F(jVarM, true);
                }
            }
        }

        @Override // p1.a
        public boolean c(j1 j1Var) {
            Window.Callback callbackP;
            if (j1Var != j1Var.k()) {
                return true;
            }
            d0 d0Var = d0.this;
            if (!d0Var.D || (callbackP = d0Var.P()) == null || d0.this.P) {
                return true;
            }
            callbackP.onMenuOpened(108, j1Var);
            return true;
        }
    }

    public d0(Context context, Window window, b0 b0Var, Object obj) {
        m4<String, Integer> m4Var;
        Integer orDefault;
        AppCompatActivity appCompatActivity;
        this.Q = -100;
        this.h = context;
        this.k = b0Var;
        this.g = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AppCompatActivity)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    appCompatActivity = (AppCompatActivity) context;
                    break;
                }
            }
            appCompatActivity = null;
            if (appCompatActivity != null) {
                this.Q = appCompatActivity.s().f();
            }
        }
        if (this.Q == -100 && (orDefault = (m4Var = d0).getOrDefault(this.g.getClass().getName(), null)) != null) {
            this.Q = orDefault.intValue();
            m4Var.remove(this.g.getClass().getName());
        }
        if (window != null) {
            C(window);
        }
        b2.e();
    }

    public boolean A() {
        return B(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean B(boolean r13) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d0.B(boolean):boolean");
    }

    public final void C(Window window) {
        if (this.i != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof d) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        d dVar = new d(callback);
        this.j = dVar;
        window.setCallback(dVar);
        c3 c3VarQ = c3.q(this.h, null, e0);
        Drawable drawableH = c3VarQ.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        c3VarQ.b.recycle();
        this.i = window;
    }

    public void D(int i2, j jVar, Menu menu) {
        if (menu == null && jVar != null) {
            menu = jVar.h;
        }
        if ((jVar == null || jVar.m) && !this.P) {
            this.j.e.onPanelClosed(i2, menu);
        }
    }

    public void E(j1 j1Var) {
        if (this.I) {
            return;
        }
        this.I = true;
        this.o.g();
        Window.Callback callbackP = P();
        if (callbackP != null && !this.P) {
            callbackP.onPanelClosed(108, j1Var);
        }
        this.I = false;
    }

    public void F(j jVar, boolean z) {
        ViewGroup viewGroup;
        k2 k2Var;
        if (z && jVar.a == 0 && (k2Var = this.o) != null && k2Var.a()) {
            E(jVar.h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.h.getSystemService("window");
        if (windowManager != null && jVar.m && (viewGroup = jVar.e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                D(jVar.a, jVar, null);
            }
        }
        jVar.k = false;
        jVar.l = false;
        jVar.m = false;
        jVar.f = null;
        jVar.o = true;
        if (this.K == jVar) {
            this.K = null;
        }
    }

    public final Configuration G(Context context, int i2, Configuration configuration) {
        int i3 = i2 != 1 ? i2 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean H(android.view.KeyEvent r7) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d0.H(android.view.KeyEvent):boolean");
    }

    public void I(int i2) {
        j jVarO = O(i2);
        if (jVarO.h != null) {
            Bundle bundle = new Bundle();
            jVarO.h.x(bundle);
            if (bundle.size() > 0) {
                jVarO.q = bundle;
            }
            jVarO.h.B();
            jVarO.h.clear();
        }
        jVarO.p = true;
        jVarO.o = true;
        if ((i2 == 108 || i2 == 0) && this.o != null) {
            j jVarO2 = O(0);
            jVarO2.k = false;
            V(jVarO2, null);
        }
    }

    public void J() {
        ma maVar = this.v;
        if (maVar != null) {
            maVar.b();
        }
    }

    public final void K() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ViewGroup viewGroup;
        if (this.x) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = this.h.obtainStyledAttributes(androidx.appcompat.R$styleable.AppCompatTheme);
        int i2 = androidx.appcompat.R$styleable.AppCompatTheme_windowActionBar;
        if (!typedArrayObtainStyledAttributes.hasValue(i2)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_windowNoTitle, false)) {
            t(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(i2, false)) {
            t(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            t(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            t(10);
        }
        this.G = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        L();
        this.i.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.h);
        if (this.H) {
            viewGroup = this.F ? (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.G) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_dialog_title_material, (ViewGroup) null);
            this.E = false;
            this.D = false;
        } else if (this.D) {
            TypedValue typedValue = new TypedValue();
            this.h.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new x0(this.h, typedValue.resourceId) : this.h).inflate(R$layout.abc_screen_toolbar, (ViewGroup) null);
            k2 k2Var = (k2) viewGroup.findViewById(R$id.decor_content_parent);
            this.o = k2Var;
            k2Var.setWindowCallback(P());
            if (this.E) {
                this.o.f(109);
            }
            if (this.B) {
                this.o.f(2);
            }
            if (this.C) {
                this.o.f(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            StringBuilder sbZ = jo.z("AppCompat does not support the current theme features: { windowActionBar: ");
            sbZ.append(this.D);
            sbZ.append(", windowActionBarOverlay: ");
            sbZ.append(this.E);
            sbZ.append(", android:windowIsFloating: ");
            sbZ.append(this.G);
            sbZ.append(", windowActionModeOverlay: ");
            sbZ.append(this.F);
            sbZ.append(", windowNoTitle: ");
            sbZ.append(this.H);
            sbZ.append(" }");
            throw new IllegalArgumentException(sbZ.toString());
        }
        ha.t(viewGroup, new e0(this));
        if (this.o == null) {
            this.z = (TextView) viewGroup.findViewById(R$id.title);
        }
        Method method = i3.a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, new Object[0]);
        } catch (IllegalAccessException e2) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e3) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e3);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R$id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.i.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.i.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new f0(this));
        this.y = viewGroup;
        Object obj = this.g;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.n;
        if (!TextUtils.isEmpty(title)) {
            k2 k2Var2 = this.o;
            if (k2Var2 != null) {
                k2Var2.setWindowTitle(title);
            } else {
                u uVar = this.l;
                if (uVar != null) {
                    uVar.v(title);
                } else {
                    TextView textView = this.z;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.y.findViewById(R.id.content);
        View decorView = this.i.getDecorView();
        contentFrameLayout2.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes2 = this.h.obtainStyledAttributes(androidx.appcompat.R$styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes2.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
        int i3 = androidx.appcompat.R$styleable.AppCompatTheme_windowFixedWidthMajor;
        if (typedArrayObtainStyledAttributes2.hasValue(i3)) {
            typedArrayObtainStyledAttributes2.getValue(i3, contentFrameLayout2.getFixedWidthMajor());
        }
        int i4 = androidx.appcompat.R$styleable.AppCompatTheme_windowFixedWidthMinor;
        if (typedArrayObtainStyledAttributes2.hasValue(i4)) {
            typedArrayObtainStyledAttributes2.getValue(i4, contentFrameLayout2.getFixedWidthMinor());
        }
        int i5 = androidx.appcompat.R$styleable.AppCompatTheme_windowFixedHeightMajor;
        if (typedArrayObtainStyledAttributes2.hasValue(i5)) {
            typedArrayObtainStyledAttributes2.getValue(i5, contentFrameLayout2.getFixedHeightMajor());
        }
        int i6 = androidx.appcompat.R$styleable.AppCompatTheme_windowFixedHeightMinor;
        if (typedArrayObtainStyledAttributes2.hasValue(i6)) {
            typedArrayObtainStyledAttributes2.getValue(i6, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.x = true;
        j jVarO = O(0);
        if (this.P || jVarO.h != null) {
            return;
        }
        R(108);
    }

    public final void L() {
        if (this.i == null) {
            Object obj = this.g;
            if (obj instanceof Activity) {
                C(((Activity) obj).getWindow());
            }
        }
        if (this.i == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public j M(Menu menu) {
        j[] jVarArr = this.J;
        int length = jVarArr != null ? jVarArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            j jVar = jVarArr[i2];
            if (jVar != null && jVar.h == menu) {
                return jVar;
            }
        }
        return null;
    }

    public final f N(Context context) {
        if (this.U == null) {
            if (n0.d == null) {
                Context applicationContext = context.getApplicationContext();
                n0.d = new n0(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.U = new g(n0.d);
        }
        return this.U;
    }

    public j O(int i2) {
        j[] jVarArr = this.J;
        if (jVarArr == null || jVarArr.length <= i2) {
            j[] jVarArr2 = new j[i2 + 1];
            if (jVarArr != null) {
                System.arraycopy(jVarArr, 0, jVarArr2, 0, jVarArr.length);
            }
            this.J = jVarArr2;
            jVarArr = jVarArr2;
        }
        j jVar = jVarArr[i2];
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(i2);
        jVarArr[i2] = jVar2;
        return jVar2;
    }

    public final Window.Callback P() {
        return this.i.getCallback();
    }

    public final void Q() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        K();
        if (this.D && this.l == null) {
            Object obj = this.g;
            if (obj instanceof Activity) {
                this.l = new o0((Activity) this.g, this.E);
            } else if (obj instanceof Dialog) {
                this.l = new o0((Dialog) this.g);
            }
            u uVar = this.l;
            if (uVar != null) {
                uVar.n(this.Z);
            }
        }
    }

    public final void R(int i2) {
        this.X = (1 << i2) | this.X;
        if (this.W) {
            return;
        }
        View decorView = this.i.getDecorView();
        Runnable runnable = this.Y;
        AtomicInteger atomicInteger = ha.a;
        decorView.postOnAnimation(runnable);
        this.W = true;
    }

    public int S(Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() != 0) {
                    return N(context).c();
                }
                return -1;
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.V == null) {
                    this.V = new e(context);
                }
                return this.V.c();
            }
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x015b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void T(d0.j r13, android.view.KeyEvent r14) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d0.T(d0$j, android.view.KeyEvent):void");
    }

    public final boolean U(j jVar, int i2, KeyEvent keyEvent, int i3) {
        j1 j1Var;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((jVar.k || V(jVar, keyEvent)) && (j1Var = jVar.h) != null) {
            zPerformShortcut = j1Var.performShortcut(i2, keyEvent, i3);
        }
        if (zPerformShortcut && (i3 & 1) == 0 && this.o == null) {
            F(jVar, true);
        }
        return zPerformShortcut;
    }

    public final boolean V(j jVar, KeyEvent keyEvent) {
        k2 k2Var;
        k2 k2Var2;
        Resources.Theme themeNewTheme;
        k2 k2Var3;
        k2 k2Var4;
        if (this.P) {
            return false;
        }
        if (jVar.k) {
            return true;
        }
        j jVar2 = this.K;
        if (jVar2 != null && jVar2 != jVar) {
            F(jVar2, false);
        }
        Window.Callback callbackP = P();
        if (callbackP != null) {
            jVar.g = callbackP.onCreatePanelView(jVar.a);
        }
        int i2 = jVar.a;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (k2Var4 = this.o) != null) {
            k2Var4.setMenuPrepared();
        }
        if (jVar.g == null && (!z || !(this.l instanceof l0))) {
            j1 j1Var = jVar.h;
            if (j1Var == null || jVar.p) {
                if (j1Var == null) {
                    Context context = this.h;
                    int i3 = jVar.a;
                    if ((i3 == 0 || i3 == 108) && this.o != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(androidx.appcompat.R$attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(androidx.appcompat.R$attr.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            x0 x0Var = new x0(context, 0);
                            x0Var.getTheme().setTo(themeNewTheme);
                            context = x0Var;
                        }
                    }
                    j1 j1Var2 = new j1(context);
                    j1Var2.e = this;
                    jVar.a(j1Var2);
                    if (jVar.h == null) {
                        return false;
                    }
                }
                if (z && (k2Var2 = this.o) != null) {
                    if (this.p == null) {
                        this.p = new b();
                    }
                    k2Var2.setMenu(jVar.h, this.p);
                }
                jVar.h.B();
                if (!callbackP.onCreatePanelMenu(jVar.a, jVar.h)) {
                    jVar.a(null);
                    if (z && (k2Var = this.o) != null) {
                        k2Var.setMenu(null, this.p);
                    }
                    return false;
                }
                jVar.p = false;
            }
            jVar.h.B();
            Bundle bundle = jVar.q;
            if (bundle != null) {
                jVar.h.v(bundle);
                jVar.q = null;
            }
            if (!callbackP.onPreparePanel(0, jVar.g, jVar.h)) {
                if (z && (k2Var3 = this.o) != null) {
                    k2Var3.setMenu(null, this.p);
                }
                jVar.h.A();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            jVar.n = z2;
            jVar.h.setQwertyMode(z2);
            jVar.h.A();
        }
        jVar.k = true;
        jVar.l = false;
        this.K = jVar;
        return true;
    }

    public final boolean W() {
        ViewGroup viewGroup;
        if (this.x && (viewGroup = this.y) != null) {
            AtomicInteger atomicInteger = ha.a;
            if (viewGroup.isLaidOut()) {
                return true;
            }
        }
        return false;
    }

    public final void X() {
        if (this.x) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final int Y(qa qaVar, Rect rect) {
        boolean z;
        boolean z2;
        int iE = qaVar.e();
        ActionBarContextView actionBarContextView = this.s;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.s.getLayoutParams();
            if (this.s.isShown()) {
                if (this.a0 == null) {
                    this.a0 = new Rect();
                    this.b0 = new Rect();
                }
                Rect rect2 = this.a0;
                Rect rect3 = this.b0;
                rect2.set(qaVar.c(), qaVar.e(), qaVar.d(), qaVar.b());
                i3.a(this.y, rect2, rect3);
                int i2 = rect2.top;
                int i3 = rect2.left;
                int i4 = rect2.right;
                ViewGroup viewGroup = this.y;
                AtomicInteger atomicInteger = ha.a;
                qa qaVarK = Build.VERSION.SDK_INT >= 23 ? qa.k(viewGroup.getRootWindowInsets()) : null;
                int iC = qaVarK == null ? 0 : qaVarK.c();
                int iD = qaVarK == null ? 0 : qaVarK.d();
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i3;
                    marginLayoutParams.rightMargin = i4;
                    z2 = true;
                }
                if (i2 <= 0 || this.A != null) {
                    View view = this.A;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i5 = marginLayoutParams2.height;
                        int i6 = marginLayoutParams.topMargin;
                        if (i5 != i6 || marginLayoutParams2.leftMargin != iC || marginLayoutParams2.rightMargin != iD) {
                            marginLayoutParams2.height = i6;
                            marginLayoutParams2.leftMargin = iC;
                            marginLayoutParams2.rightMargin = iD;
                            this.A.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.h);
                    this.A = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iC;
                    layoutParams.rightMargin = iD;
                    this.y.addView(this.A, -1, layoutParams);
                }
                View view3 = this.A;
                z = view3 != null;
                if (z && view3.getVisibility() != 0) {
                    View view4 = this.A;
                    view4.setBackgroundColor((view4.getWindowSystemUiVisibility() & RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? u7.b(this.h, R$color.abc_decor_view_status_guard_light) : u7.b(this.h, R$color.abc_decor_view_status_guard));
                }
                if (!this.F && z) {
                    iE = 0;
                }
                z = z2;
            } else {
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                } else {
                    z = false;
                }
                z = false;
            }
            if (z) {
                this.s.setLayoutParams(marginLayoutParams);
            }
        }
        View view5 = this.A;
        if (view5 != null) {
            view5.setVisibility(z ? 0 : 8);
        }
        return iE;
    }

    @Override // j1.a
    public boolean a(j1 j1Var, MenuItem menuItem) {
        j jVarM;
        Window.Callback callbackP = P();
        if (callbackP == null || this.P || (jVarM = M(j1Var.k())) == null) {
            return false;
        }
        return callbackP.onMenuItemSelected(jVarM.a, menuItem);
    }

    @Override // j1.a
    public void b(j1 j1Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        k2 k2Var = this.o;
        if (k2Var == null || !k2Var.b() || (ViewConfiguration.get(this.h).hasPermanentMenuKey() && !this.o.c())) {
            j jVarO = O(0);
            jVarO.o = true;
            F(jVarO, false);
            T(jVarO, null);
            return;
        }
        Window.Callback callbackP = P();
        if (this.o.a()) {
            this.o.d();
            if (this.P) {
                return;
            }
            callbackP.onPanelClosed(108, O(0).h);
            return;
        }
        if (callbackP == null || this.P) {
            return;
        }
        if (this.W && (1 & this.X) != 0) {
            this.i.getDecorView().removeCallbacks(this.Y);
            this.Y.run();
        }
        j jVarO2 = O(0);
        j1 j1Var2 = jVarO2.h;
        if (j1Var2 == null || jVarO2.p || !callbackP.onPreparePanel(0, jVarO2.g, j1Var2)) {
            return;
        }
        callbackP.onMenuOpened(108, jVarO2.h);
        this.o.e();
    }

    @Override // defpackage.c0
    public void c(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        K();
        ((ViewGroup) this.y.findViewById(R.id.content)).addView(view, layoutParams);
        this.j.e.onContentChanged();
    }

    @Override // defpackage.c0
    public Context d(Context context) {
        Configuration configuration;
        this.M = true;
        int i2 = this.Q;
        if (i2 == -100) {
            i2 = -100;
        }
        int iS = S(context, i2);
        if (g0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(G(context, iS, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof x0) {
            try {
                ((x0) context).a(G(context, iS, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f0) {
            return context;
        }
        try {
            Configuration configuration2 = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            if (configuration2.equals(configuration3)) {
                configuration = null;
            } else {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3 != null && configuration2.diff(configuration3) != 0) {
                    float f2 = configuration2.fontScale;
                    float f3 = configuration3.fontScale;
                    if (f2 != f3) {
                        configuration.fontScale = f3;
                    }
                    int i3 = configuration2.mcc;
                    int i4 = configuration3.mcc;
                    if (i3 != i4) {
                        configuration.mcc = i4;
                    }
                    int i5 = configuration2.mnc;
                    int i6 = configuration3.mnc;
                    if (i5 != i6) {
                        configuration.mnc = i6;
                    }
                    int i7 = Build.VERSION.SDK_INT;
                    if (i7 >= 24) {
                        LocaleList locales = configuration2.getLocales();
                        LocaleList locales2 = configuration3.getLocales();
                        if (!locales.equals(locales2)) {
                            configuration.setLocales(locales2);
                            configuration.locale = configuration3.locale;
                        }
                    } else if (!Objects.equals(configuration2.locale, configuration3.locale)) {
                        configuration.locale = configuration3.locale;
                    }
                    int i8 = configuration2.touchscreen;
                    int i9 = configuration3.touchscreen;
                    if (i8 != i9) {
                        configuration.touchscreen = i9;
                    }
                    int i10 = configuration2.keyboard;
                    int i11 = configuration3.keyboard;
                    if (i10 != i11) {
                        configuration.keyboard = i11;
                    }
                    int i12 = configuration2.keyboardHidden;
                    int i13 = configuration3.keyboardHidden;
                    if (i12 != i13) {
                        configuration.keyboardHidden = i13;
                    }
                    int i14 = configuration2.navigation;
                    int i15 = configuration3.navigation;
                    if (i14 != i15) {
                        configuration.navigation = i15;
                    }
                    int i16 = configuration2.navigationHidden;
                    int i17 = configuration3.navigationHidden;
                    if (i16 != i17) {
                        configuration.navigationHidden = i17;
                    }
                    int i18 = configuration2.orientation;
                    int i19 = configuration3.orientation;
                    if (i18 != i19) {
                        configuration.orientation = i19;
                    }
                    int i20 = configuration2.screenLayout & 15;
                    int i21 = configuration3.screenLayout & 15;
                    if (i20 != i21) {
                        configuration.screenLayout |= i21;
                    }
                    int i22 = configuration2.screenLayout & 192;
                    int i23 = configuration3.screenLayout & 192;
                    if (i22 != i23) {
                        configuration.screenLayout |= i23;
                    }
                    int i24 = configuration2.screenLayout & 48;
                    int i25 = configuration3.screenLayout & 48;
                    if (i24 != i25) {
                        configuration.screenLayout |= i25;
                    }
                    int i26 = configuration2.screenLayout & 768;
                    int i27 = configuration3.screenLayout & 768;
                    if (i26 != i27) {
                        configuration.screenLayout |= i27;
                    }
                    if (i7 >= 26) {
                        int i28 = configuration2.colorMode & 3;
                        int i29 = configuration3.colorMode & 3;
                        if (i28 != i29) {
                            configuration.colorMode |= i29;
                        }
                        int i30 = configuration2.colorMode & 12;
                        int i31 = configuration3.colorMode & 12;
                        if (i30 != i31) {
                            configuration.colorMode |= i31;
                        }
                    }
                    int i32 = configuration2.uiMode & 15;
                    int i33 = configuration3.uiMode & 15;
                    if (i32 != i33) {
                        configuration.uiMode |= i33;
                    }
                    int i34 = configuration2.uiMode & 48;
                    int i35 = configuration3.uiMode & 48;
                    if (i34 != i35) {
                        configuration.uiMode |= i35;
                    }
                    int i36 = configuration2.screenWidthDp;
                    int i37 = configuration3.screenWidthDp;
                    if (i36 != i37) {
                        configuration.screenWidthDp = i37;
                    }
                    int i38 = configuration2.screenHeightDp;
                    int i39 = configuration3.screenHeightDp;
                    if (i38 != i39) {
                        configuration.screenHeightDp = i39;
                    }
                    int i40 = configuration2.smallestScreenWidthDp;
                    int i41 = configuration3.smallestScreenWidthDp;
                    if (i40 != i41) {
                        configuration.smallestScreenWidthDp = i41;
                    }
                    int i42 = configuration2.densityDpi;
                    int i43 = configuration3.densityDpi;
                    if (i42 != i43) {
                        configuration.densityDpi = i43;
                    }
                }
            }
            Configuration configurationG = G(context, iS, configuration);
            x0 x0Var = new x0(context, R$style.Theme_AppCompat_Empty);
            x0Var.a(configurationG);
            boolean z = context.getTheme() != null;
            if (z) {
                Resources.Theme theme = x0Var.getTheme();
                int i44 = Build.VERSION.SDK_INT;
                if (i44 >= 29) {
                    theme.rebase();
                } else if (i44 >= 23) {
                    synchronized (c8.a.a) {
                        if (!c8.a.c) {
                            try {
                                Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                                c8.a.b = declaredMethod;
                                declaredMethod.setAccessible(true);
                            } catch (NoSuchMethodException e2) {
                                Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e2);
                            }
                            c8.a.c = true;
                        }
                        Method method = c8.a.b;
                        if (method != null) {
                            try {
                                method.invoke(theme, new Object[0]);
                            } catch (IllegalAccessException | InvocationTargetException e3) {
                                Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e3);
                                c8.a.b = null;
                            }
                        }
                    }
                }
            }
            return x0Var;
        } catch (PackageManager.NameNotFoundException e4) {
            throw new RuntimeException("Application failed to obtain resources from itself", e4);
        }
    }

    @Override // defpackage.c0
    public <T extends View> T e(int i2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        K();
        return (T) this.i.findViewById(i2);
    }

    @Override // defpackage.c0
    public int f() {
        return this.Q;
    }

    @Override // defpackage.c0
    public MenuInflater g() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.m == null) {
            Q();
            u uVar = this.l;
            this.m = new a1(uVar != null ? uVar.e() : this.h);
        }
        return this.m;
    }

    @Override // defpackage.c0
    public u h() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Q();
        return this.l;
    }

    @Override // defpackage.c0
    public void i() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.h);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof d0) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // defpackage.c0
    public void j() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Q();
        u uVar = this.l;
        if (uVar == null || !uVar.g()) {
            R(0);
        }
    }

    @Override // defpackage.c0
    public void k(Configuration configuration) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.D && this.x) {
            Q();
            u uVar = this.l;
            if (uVar != null) {
                uVar.h(configuration);
            }
        }
        b2 b2VarA = b2.a();
        Context context = this.h;
        synchronized (b2VarA) {
            s2 s2Var = b2VarA.a;
            synchronized (s2Var) {
                j4<WeakReference<Drawable.ConstantState>> j4Var = s2Var.d.get(context);
                if (j4Var != null) {
                    j4Var.c();
                }
            }
        }
        B(false);
    }

    @Override // defpackage.c0
    public void l(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, IllegalArgumentException {
        this.M = true;
        B(false);
        L();
        Object obj = this.g;
        if (obj instanceof Activity) {
            String strI = null;
            try {
                Activity activity = (Activity) obj;
                try {
                    strI = h.I(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new IllegalArgumentException(e2);
                }
            } catch (IllegalArgumentException unused) {
            }
            if (strI != null) {
                u uVar = this.l;
                if (uVar == null) {
                    this.Z = true;
                } else {
                    uVar.n(true);
                }
            }
            synchronized (c0.f) {
                c0.s(this);
                c0.e.add(new WeakReference<>(this));
            }
        }
        this.N = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
    @Override // defpackage.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.g
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = defpackage.c0.f
            monitor-enter(r0)
            defpackage.c0.s(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.W
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.i
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.Y
            r0.removeCallbacks(r1)
        L20:
            r0 = 0
            r3.O = r0
            r0 = 1
            r3.P = r0
            int r0 = r3.Q
            r1 = -100
            if (r0 == r1) goto L50
            java.lang.Object r0 = r3.g
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L50
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L50
            m4<java.lang.String, java.lang.Integer> r0 = defpackage.d0.d0
            java.lang.Object r1 = r3.g
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.Q
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5f
        L50:
            m4<java.lang.String, java.lang.Integer> r0 = defpackage.d0.d0
            java.lang.Object r1 = r3.g
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5f:
            u r0 = r3.l
            if (r0 == 0) goto L66
            r0.i()
        L66:
            d0$f r0 = r3.U
            if (r0 == 0) goto L6d
            r0.a()
        L6d:
            d0$f r0 = r3.V
            if (r0 == 0) goto L74
            r0.a()
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d0.m():void");
    }

    @Override // defpackage.c0
    public void n(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        K();
    }

    @Override // defpackage.c0
    public void o() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Q();
        u uVar = this.l;
        if (uVar != null) {
            uVar.r(true);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:118:0x021b
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0142  */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r7v11, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r7v8 */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r7, java.lang.String r8, android.content.Context r9, android.util.AttributeSet r10) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d0.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // defpackage.c0
    public void p(Bundle bundle) {
    }

    @Override // defpackage.c0
    public void q() {
        this.O = true;
        A();
    }

    @Override // defpackage.c0
    public void r() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.O = false;
        Q();
        u uVar = this.l;
        if (uVar != null) {
            uVar.r(false);
        }
    }

    @Override // defpackage.c0
    public boolean t(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = 108;
        } else if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        if (this.H && i2 == 108) {
            return false;
        }
        if (this.D && i2 == 1) {
            this.D = false;
        }
        if (i2 == 1) {
            X();
            this.H = true;
            return true;
        }
        if (i2 == 2) {
            X();
            this.B = true;
            return true;
        }
        if (i2 == 5) {
            X();
            this.C = true;
            return true;
        }
        if (i2 == 10) {
            X();
            this.F = true;
            return true;
        }
        if (i2 == 108) {
            X();
            this.D = true;
            return true;
        }
        if (i2 != 109) {
            return this.i.requestFeature(i2);
        }
        X();
        this.E = true;
        return true;
    }

    @Override // defpackage.c0
    public void u(int i2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        K();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.h).inflate(i2, viewGroup);
        this.j.e.onContentChanged();
    }

    @Override // defpackage.c0
    public void v(View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        K();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.j.e.onContentChanged();
    }

    @Override // defpackage.c0
    public void w(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        K();
        ViewGroup viewGroup = (ViewGroup) this.y.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.j.e.onContentChanged();
    }

    @Override // defpackage.c0
    public void x(Toolbar toolbar) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.g instanceof Activity) {
            Q();
            u uVar = this.l;
            if (uVar instanceof o0) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.m = null;
            if (uVar != null) {
                uVar.i();
            }
            if (toolbar != null) {
                Object obj = this.g;
                l0 l0Var = new l0(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : this.n, this.j);
                this.l = l0Var;
                this.i.setCallback(l0Var.c);
            } else {
                this.l = null;
                this.i.setCallback(this.j);
            }
            j();
        }
    }

    @Override // defpackage.c0
    public void y(int i2) {
        this.R = i2;
    }

    @Override // defpackage.c0
    public final void z(CharSequence charSequence) {
        this.n = charSequence;
        k2 k2Var = this.o;
        if (k2Var != null) {
            k2Var.setWindowTitle(charSequence);
            return;
        }
        u uVar = this.l;
        if (uVar != null) {
            uVar.v(charSequence);
            return;
        }
        TextView textView = this.z;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public class d extends c1 {
        public d(Window.Callback callback) {
            super(callback);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.ActionMode a(android.view.ActionMode.Callback r10) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            /*
                Method dump skipped, instructions count: 443
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d0.d.a(android.view.ActionMode$Callback):android.view.ActionMode");
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return d0.this.H(keyEvent) || this.e.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
        @Override // defpackage.c1, android.view.Window.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchKeyShortcutEvent(android.view.KeyEvent r6) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            /*
                r5 = this;
                android.view.Window$Callback r0 = r5.e
                boolean r0 = r0.dispatchKeyShortcutEvent(r6)
                r1 = 0
                r2 = 1
                if (r0 != 0) goto L4f
                d0 r0 = defpackage.d0.this
                int r3 = r6.getKeyCode()
                r0.Q()
                u r4 = r0.l
                if (r4 == 0) goto L1f
                boolean r3 = r4.j(r3, r6)
                if (r3 == 0) goto L1f
            L1d:
                r6 = 1
                goto L4d
            L1f:
                d0$j r3 = r0.K
                if (r3 == 0) goto L34
                int r4 = r6.getKeyCode()
                boolean r3 = r0.U(r3, r4, r6, r2)
                if (r3 == 0) goto L34
                d0$j r6 = r0.K
                if (r6 == 0) goto L1d
                r6.l = r2
                goto L1d
            L34:
                d0$j r3 = r0.K
                if (r3 != 0) goto L4c
                d0$j r3 = r0.O(r1)
                r0.V(r3, r6)
                int r4 = r6.getKeyCode()
                boolean r6 = r0.U(r3, r4, r6, r2)
                r3.k = r1
                if (r6 == 0) goto L4c
                goto L1d
            L4c:
                r6 = 0
            L4d:
                if (r6 == 0) goto L50
            L4f:
                r1 = 1
            L50:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: d0.d.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof j1)) {
                return this.e.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            this.e.onMenuOpened(i, menu);
            d0 d0Var = d0.this;
            Objects.requireNonNull(d0Var);
            if (i == 108) {
                d0Var.Q();
                u uVar = d0Var.l;
                if (uVar != null) {
                    uVar.c(true);
                }
            }
            return true;
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            this.e.onPanelClosed(i, menu);
            d0 d0Var = d0.this;
            Objects.requireNonNull(d0Var);
            if (i == 108) {
                d0Var.Q();
                u uVar = d0Var.l;
                if (uVar != null) {
                    uVar.c(false);
                    return;
                }
                return;
            }
            if (i == 0) {
                j jVarO = d0Var.O(i);
                if (jVarO.m) {
                    d0Var.F(jVarO, false);
                }
            }
        }

        @Override // android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            j1 j1Var = menu instanceof j1 ? (j1) menu : null;
            if (i == 0 && j1Var == null) {
                return false;
            }
            if (j1Var != null) {
                j1Var.x = true;
            }
            boolean zOnPreparePanel = this.e.onPreparePanel(i, view, menu);
            if (j1Var != null) {
                j1Var.x = false;
            }
            return zOnPreparePanel;
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            j1 j1Var = d0.this.O(0).h;
            if (j1Var != null) {
                this.e.onProvideKeyboardShortcuts(list, j1Var, i);
            } else {
                this.e.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return d0.this.w ? a(callback) : this.e.onWindowStartingActionMode(callback);
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (d0.this.w && i == 0) {
                return a(callback);
            }
            return this.e.onWindowStartingActionMode(callback, i);
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
