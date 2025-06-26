package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$drawable;
import defpackage.b2;
import defpackage.d0;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class s2 {
    public static s2 i;
    public WeakHashMap<Context, n4<ColorStateList>> a;
    public m4<String, d> b;
    public n4<String> c;
    public final WeakHashMap<Context, j4<WeakReference<Drawable.ConstantState>>> d = new WeakHashMap<>(0);
    public TypedValue e;
    public boolean f;
    public e g;
    public static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
    public static final c j = new c(6);

    public static class a implements d {
        @Override // s2.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return q0.g(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    public static class b implements d {
        @Override // s2.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                pi piVar = new pi(context, null, null);
                piVar.inflate(resources, xmlPullParser, attributeSet, theme);
                return piVar;
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    public static class c extends k4<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }
    }

    public interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface e {
    }

    public static class f implements d {
        @Override // s2.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return ti.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    public static synchronized s2 d() {
        if (i == null) {
            s2 s2Var = new s2();
            i = s2Var;
            if (Build.VERSION.SDK_INT < 24) {
                s2Var.a("vector", new f());
                s2Var.a("animated-vector", new b());
                s2Var.a("animated-selector", new a());
            }
        }
        return i;
    }

    public static synchronized PorterDuffColorFilter h(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterA;
        c cVar = j;
        Objects.requireNonNull(cVar);
        int i3 = (i2 + 31) * 31;
        porterDuffColorFilterA = cVar.a(Integer.valueOf(mode.hashCode() + i3));
        if (porterDuffColorFilterA == null) {
            porterDuffColorFilterA = new PorterDuffColorFilter(i2, mode);
            Objects.requireNonNull(cVar);
            cVar.b(Integer.valueOf(mode.hashCode() + i3), porterDuffColorFilterA);
        }
        return porterDuffColorFilterA;
    }

    public final void a(String str, d dVar) {
        if (this.b == null) {
            this.b = new m4<>();
        }
        this.b.put(str, dVar);
    }

    public final synchronized boolean b(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        j4<WeakReference<Drawable.ConstantState>> j4Var = this.d.get(context);
        if (j4Var == null) {
            j4Var = new j4<>();
            this.d.put(context, j4Var);
        }
        j4Var.i(j2, new WeakReference<>(constantState));
        return true;
    }

    public final Drawable c(Context context, int i2) throws Resources.NotFoundException {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        context.getResources().getValue(i2, typedValue, true);
        long j2 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable drawableE = e(context, j2);
        if (drawableE != null) {
            return drawableE;
        }
        e eVar = this.g;
        LayerDrawable layerDrawable = null;
        if (eVar != null) {
            if (i2 == R$drawable.abc_cab_background_top_material) {
                layerDrawable = new LayerDrawable(new Drawable[]{f(context, R$drawable.abc_cab_background_internal_bg), f(context, R$drawable.abc_cab_background_top_mtrl_alpha)});
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j2, layerDrawable);
        }
        return layerDrawable;
    }

    public final synchronized Drawable e(Context context, long j2) {
        j4<WeakReference<Drawable.ConstantState>> j4Var = this.d.get(context);
        if (j4Var == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceG = j4Var.g(j2, null);
        if (weakReferenceG != null) {
            Drawable.ConstantState constantState = weakReferenceG.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            j4Var.j(j2);
        }
        return null;
    }

    public synchronized Drawable f(Context context, int i2) {
        return g(context, i2, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r0 != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized android.graphics.drawable.Drawable g(android.content.Context r5, int r6, boolean r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.f     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L6
            goto L2a
        L6:
            r0 = 1
            r4.f = r0     // Catch: java.lang.Throwable -> L49
            int r1 = androidx.appcompat.resources.R$drawable.abc_vector_test     // Catch: java.lang.Throwable -> L49
            android.graphics.drawable.Drawable r1 = r4.f(r5, r1)     // Catch: java.lang.Throwable -> L49
            r2 = 0
            if (r1 == 0) goto L4b
            boolean r3 = r1 instanceof defpackage.ti     // Catch: java.lang.Throwable -> L49
            if (r3 != 0) goto L28
            java.lang.String r3 = "android.graphics.drawable.VectorDrawable"
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> L49
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L49
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L27
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 == 0) goto L4b
        L2a:
            android.graphics.drawable.Drawable r0 = r4.j(r5, r6)     // Catch: java.lang.Throwable -> L49
            if (r0 != 0) goto L34
            android.graphics.drawable.Drawable r0 = r4.c(r5, r6)     // Catch: java.lang.Throwable -> L49
        L34:
            if (r0 != 0) goto L3c
            java.lang.Object r0 = defpackage.u7.a     // Catch: java.lang.Throwable -> L49
            android.graphics.drawable.Drawable r0 = r5.getDrawable(r6)     // Catch: java.lang.Throwable -> L49
        L3c:
            if (r0 == 0) goto L42
            android.graphics.drawable.Drawable r0 = r4.k(r5, r6, r7, r0)     // Catch: java.lang.Throwable -> L49
        L42:
            if (r0 == 0) goto L47
            defpackage.m2.b(r0)     // Catch: java.lang.Throwable -> L49
        L47:
            monitor-exit(r4)
            return r0
        L49:
            r5 = move-exception
            goto L55
        L4b:
            r4.f = r2     // Catch: java.lang.Throwable -> L49
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L49
            java.lang.String r6 = "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L49
            throw r5     // Catch: java.lang.Throwable -> L49
        L55:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s2.g(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    public synchronized ColorStateList i(Context context, int i2) {
        ColorStateList colorStateListF;
        n4<ColorStateList> n4Var;
        WeakHashMap<Context, n4<ColorStateList>> weakHashMap = this.a;
        ColorStateList colorStateListC = null;
        colorStateListF = (weakHashMap == null || (n4Var = weakHashMap.get(context)) == null) ? null : n4Var.f(i2, null);
        if (colorStateListF == null) {
            e eVar = this.g;
            if (eVar != null) {
                colorStateListC = ((b2.a) eVar).c(context, i2);
            }
            if (colorStateListC != null) {
                if (this.a == null) {
                    this.a = new WeakHashMap<>();
                }
                n4<ColorStateList> n4Var2 = this.a.get(context);
                if (n4Var2 == null) {
                    n4Var2 = new n4<>(10);
                    this.a.put(context, n4Var2);
                }
                n4Var2.b(i2, colorStateListC);
            }
            colorStateListF = colorStateListC;
        }
        return colorStateListF;
    }

    public final Drawable j(Context context, int i2) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        m4<String, d> m4Var = this.b;
        if (m4Var == null || m4Var.isEmpty()) {
            return null;
        }
        n4<String> n4Var = this.c;
        if (n4Var != null) {
            String strF = n4Var.f(i2, null);
            if ("appcompat_skip_skip".equals(strF) || (strF != null && this.b.getOrDefault(strF, null) == null)) {
                return null;
            }
        } else {
            this.c = new n4<>(10);
        }
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long j2 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable drawableE = e(context, j2);
        if (drawableE != null) {
            return drawableE;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.c.b(i2, name);
                d dVar = this.b.get(name);
                if (dVar != null) {
                    drawableE = dVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableE != null) {
                    drawableE.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, j2, drawableE);
                }
            } catch (Exception e2) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
            }
        }
        if (drawableE == null) {
            this.c.b(i2, "appcompat_skip_skip");
        }
        return drawableE;
    }

    public final Drawable k(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList colorStateListI = i(context, i2);
        PorterDuff.Mode mode = null;
        if (colorStateListI != null) {
            if (m2.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable drawableL0 = d0.h.l0(drawable);
            drawableL0.setTintList(colorStateListI);
            e eVar = this.g;
            if (eVar != null) {
                if (i2 == R$drawable.abc_switch_thumb_material) {
                    mode = PorterDuff.Mode.MULTIPLY;
                }
            }
            if (mode == null) {
                return drawableL0;
            }
            drawableL0.setTintMode(mode);
            return drawableL0;
        }
        e eVar2 = this.g;
        if (eVar2 != null) {
            b2.a aVar = (b2.a) eVar2;
            Objects.requireNonNull(aVar);
            boolean z2 = true;
            if (i2 == R$drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.background);
                int i3 = R$attr.colorControlNormal;
                int iC = x2.c(context, i3);
                PorterDuff.Mode mode2 = b2.b;
                aVar.d(drawableFindDrawableByLayerId, iC, mode2);
                aVar.d(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), x2.c(context, i3), mode2);
                aVar.d(layerDrawable.findDrawableByLayerId(R.id.progress), x2.c(context, R$attr.colorControlActivated), mode2);
            } else if (i2 == R$drawable.abc_ratingbar_material || i2 == R$drawable.abc_ratingbar_indicator_material || i2 == R$drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(R.id.background);
                int iB = x2.b(context, R$attr.colorControlNormal);
                PorterDuff.Mode mode3 = b2.b;
                aVar.d(drawableFindDrawableByLayerId2, iB, mode3);
                Drawable drawableFindDrawableByLayerId3 = layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress);
                int i4 = R$attr.colorControlActivated;
                aVar.d(drawableFindDrawableByLayerId3, x2.c(context, i4), mode3);
                aVar.d(layerDrawable2.findDrawableByLayerId(R.id.progress), x2.c(context, i4), mode3);
            } else {
                z2 = false;
            }
            if (z2) {
                return drawable;
            }
        }
        if (l(context, i2, drawable) || !z) {
            return drawable;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean l(android.content.Context r8, int r9, android.graphics.drawable.Drawable r10) {
        /*
            r7 = this;
            s2$e r0 = r7.g
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L6e
            b2$a r0 = (b2.a) r0
            java.util.Objects.requireNonNull(r0)
            android.graphics.PorterDuff$Mode r3 = defpackage.b2.b
            int[] r4 = r0.a
            boolean r4 = r0.a(r4, r9)
            r5 = 16842801(0x1010031, float:2.3693695E-38)
            r6 = -1
            if (r4 == 0) goto L1c
            int r5 = androidx.appcompat.R$attr.colorControlNormal
            goto L45
        L1c:
            int[] r4 = r0.c
            boolean r4 = r0.a(r4, r9)
            if (r4 == 0) goto L27
            int r5 = androidx.appcompat.R$attr.colorControlActivated
            goto L45
        L27:
            int[] r4 = r0.d
            boolean r0 = r0.a(r4, r9)
            if (r0 == 0) goto L32
            android.graphics.PorterDuff$Mode r3 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L45
        L32:
            int r0 = androidx.appcompat.R$drawable.abc_list_divider_mtrl_alpha
            if (r9 != r0) goto L41
            r9 = 16842800(0x1010030, float:2.3693693E-38)
            r0 = 1109603123(0x42233333, float:40.8)
            int r0 = java.lang.Math.round(r0)
            goto L47
        L41:
            int r0 = androidx.appcompat.R$drawable.abc_dialog_material_background
            if (r9 != r0) goto L49
        L45:
            r9 = r5
            r0 = -1
        L47:
            r4 = 1
            goto L4c
        L49:
            r9 = 0
            r0 = -1
            r4 = 0
        L4c:
            if (r4 == 0) goto L6a
            boolean r4 = defpackage.m2.a(r10)
            if (r4 == 0) goto L58
            android.graphics.drawable.Drawable r10 = r10.mutate()
        L58:
            int r8 = defpackage.x2.c(r8, r9)
            android.graphics.PorterDuffColorFilter r8 = defpackage.b2.c(r8, r3)
            r10.setColorFilter(r8)
            if (r0 == r6) goto L68
            r10.setAlpha(r0)
        L68:
            r8 = 1
            goto L6b
        L6a:
            r8 = 0
        L6b:
            if (r8 == 0) goto L6e
            goto L6f
        L6e:
            r1 = 0
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s2.l(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
