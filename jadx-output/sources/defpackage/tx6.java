package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;

/* loaded from: classes2.dex */
public class tx6 implements g07 {
    public final String a;

    public tx6(String str) {
        this.a = str;
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
        return null;
    }

    @Override // defpackage.g07
    public boolean e(Bitmap bitmap) {
        return true;
    }

    @Override // defpackage.g07
    public int getHeight() {
        return 0;
    }

    @Override // defpackage.g07
    public int getWidth() {
        return 0;
    }

    @Override // defpackage.g07
    public int n() {
        return TextUtils.isEmpty(this.a) ? hashCode() : this.a.hashCode();
    }
}
