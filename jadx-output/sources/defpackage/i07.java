package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;

/* loaded from: classes2.dex */
public class i07 implements g07 {
    public final String a;
    public final uz6 b;

    public i07(String str, uz6 uz6Var, xz6 xz6Var) {
        this.a = str;
        this.b = uz6Var;
    }

    @Override // defpackage.g07
    public boolean a(Drawable drawable) {
        return true;
    }

    @Override // defpackage.g07
    public View b() {
        return null;
    }

    @Override // defpackage.g07
    public boolean c() {
        return false;
    }

    @Override // defpackage.g07
    public xz6 d() {
        return xz6.CROP;
    }

    @Override // defpackage.g07
    public boolean e(Bitmap bitmap) {
        return true;
    }

    @Override // defpackage.g07
    public int getHeight() {
        return this.b.b;
    }

    @Override // defpackage.g07
    public int getWidth() {
        return this.b.a;
    }

    @Override // defpackage.g07
    public int n() {
        return TextUtils.isEmpty(this.a) ? hashCode() : this.a.hashCode();
    }
}
