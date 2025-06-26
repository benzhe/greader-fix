package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$drawable;
import defpackage.s2;

/* loaded from: classes.dex */
public final class b2 {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static b2 c;
    public s2 a;

    public class a implements s2.e {
        public final int[] a = {R$drawable.abc_textfield_search_default_mtrl_alpha, R$drawable.abc_textfield_default_mtrl_alpha, R$drawable.abc_ab_share_pack_mtrl_alpha};
        public final int[] b = {R$drawable.abc_ic_commit_search_api_mtrl_alpha, R$drawable.abc_seekbar_tick_mark_material, R$drawable.abc_ic_menu_share_mtrl_alpha, R$drawable.abc_ic_menu_copy_mtrl_am_alpha, R$drawable.abc_ic_menu_cut_mtrl_alpha, R$drawable.abc_ic_menu_selectall_mtrl_alpha, R$drawable.abc_ic_menu_paste_mtrl_am_alpha};
        public final int[] c = {R$drawable.abc_textfield_activated_mtrl_alpha, R$drawable.abc_textfield_search_activated_mtrl_alpha, R$drawable.abc_cab_background_top_mtrl_alpha, R$drawable.abc_text_cursor_material, R$drawable.abc_text_select_handle_left_mtrl_dark, R$drawable.abc_text_select_handle_middle_mtrl_dark, R$drawable.abc_text_select_handle_right_mtrl_dark, R$drawable.abc_text_select_handle_left_mtrl_light, R$drawable.abc_text_select_handle_middle_mtrl_light, R$drawable.abc_text_select_handle_right_mtrl_light};
        public final int[] d = {R$drawable.abc_popup_background_mtrl_mult, R$drawable.abc_cab_background_internal_bg, R$drawable.abc_menu_hardkey_panel_mtrl_mult};
        public final int[] e = {R$drawable.abc_tab_indicator_material, R$drawable.abc_textfield_search_material};
        public final int[] f = {R$drawable.abc_btn_check_material, R$drawable.abc_btn_radio_material, R$drawable.abc_btn_check_material_anim, R$drawable.abc_btn_radio_material_anim};

        public final boolean a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        public final ColorStateList b(Context context, int i) {
            int iC = x2.c(context, R$attr.colorControlHighlight);
            return new ColorStateList(new int[][]{x2.b, x2.d, x2.c, x2.f}, new int[]{x2.b(context, R$attr.colorButtonNormal), d8.e(iC, i), d8.e(iC, i), i});
        }

        public ColorStateList c(Context context, int i) {
            if (i == R$drawable.abc_edit_text_material) {
                return p0.a(context, R$color.abc_tint_edittext);
            }
            if (i == R$drawable.abc_switch_track_mtrl_alpha) {
                return p0.a(context, R$color.abc_tint_switch_track);
            }
            if (i != R$drawable.abc_switch_thumb_material) {
                if (i == R$drawable.abc_btn_default_mtrl_shape) {
                    return b(context, x2.c(context, R$attr.colorButtonNormal));
                }
                if (i == R$drawable.abc_btn_borderless_material) {
                    return b(context, 0);
                }
                if (i == R$drawable.abc_btn_colored_material) {
                    return b(context, x2.c(context, R$attr.colorAccent));
                }
                if (i == R$drawable.abc_spinner_mtrl_am_alpha || i == R$drawable.abc_spinner_textfield_background_material) {
                    return p0.a(context, R$color.abc_tint_spinner);
                }
                if (a(this.b, i)) {
                    return x2.d(context, R$attr.colorControlNormal);
                }
                if (a(this.e, i)) {
                    return p0.a(context, R$color.abc_tint_default);
                }
                if (a(this.f, i)) {
                    return p0.a(context, R$color.abc_tint_btn_checkable);
                }
                if (i == R$drawable.abc_seekbar_thumb_material) {
                    return p0.a(context, R$color.abc_tint_seek_thumb);
                }
                return null;
            }
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            int i2 = R$attr.colorSwitchThumbNormal;
            ColorStateList colorStateListD = x2.d(context, i2);
            if (colorStateListD == null || !colorStateListD.isStateful()) {
                iArr[0] = x2.b;
                iArr2[0] = x2.b(context, i2);
                iArr[1] = x2.e;
                iArr2[1] = x2.c(context, R$attr.colorControlActivated);
                iArr[2] = x2.f;
                iArr2[2] = x2.c(context, i2);
            } else {
                iArr[0] = x2.b;
                iArr2[0] = colorStateListD.getColorForState(iArr[0], 0);
                iArr[1] = x2.e;
                iArr2[1] = x2.c(context, R$attr.colorControlActivated);
                iArr[2] = x2.f;
                iArr2[2] = colorStateListD.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        public final void d(Drawable drawable, int i, PorterDuff.Mode mode) {
            if (m2.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = b2.b;
            }
            drawable.setColorFilter(b2.c(i, mode));
        }
    }

    public static synchronized b2 a() {
        if (c == null) {
            e();
        }
        return c;
    }

    public static synchronized PorterDuffColorFilter c(int i, PorterDuff.Mode mode) {
        return s2.h(i, mode);
    }

    public static synchronized void e() {
        if (c == null) {
            b2 b2Var = new b2();
            c = b2Var;
            b2Var.a = s2.d();
            s2 s2Var = c.a;
            a aVar = new a();
            synchronized (s2Var) {
                s2Var.g = aVar;
            }
        }
    }

    public static void f(Drawable drawable, a3 a3Var, int[] iArr) {
        PorterDuff.Mode mode = s2.h;
        if (m2.a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = a3Var.d;
        if (z || a3Var.c) {
            PorterDuffColorFilter porterDuffColorFilterH = null;
            ColorStateList colorStateList = z ? a3Var.a : null;
            PorterDuff.Mode mode2 = a3Var.c ? a3Var.b : s2.h;
            if (colorStateList != null && mode2 != null) {
                porterDuffColorFilterH = s2.h(colorStateList.getColorForState(iArr, 0), mode2);
            }
            drawable.setColorFilter(porterDuffColorFilterH);
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public synchronized Drawable b(Context context, int i) {
        return this.a.f(context, i);
    }

    public synchronized ColorStateList d(Context context, int i) {
        return this.a.i(context, i);
    }
}
