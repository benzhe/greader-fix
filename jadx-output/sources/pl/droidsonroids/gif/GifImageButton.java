package pl.droidsonroids.gif;

import android.content.Context;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageButton;
import defpackage.u78;

/* loaded from: classes2.dex */
public class GifImageButton extends ImageButton {
    public boolean e;

    public GifImageButton(Context context) {
        super(context);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        gifViewSavedState.a(getDrawable(), 0);
        gifViewSavedState.a(getBackground(), 1);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new GifViewSavedState(super.onSaveInstanceState(), this.e ? getDrawable() : null, this.e ? getBackground() : null);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        if (u78.e(this, false, i)) {
            return;
        }
        super.setBackgroundResource(i);
    }

    public void setFreezesAnimation(boolean z) {
        this.e = z;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (u78.e(this, true, i)) {
            return;
        }
        super.setImageResource(i);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        if (u78.d(this, uri)) {
            return;
        }
        super.setImageURI(uri);
    }

    public GifImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        u78.a aVarB = u78.b(this, attributeSet, 0, 0);
        this.e = aVarB.c;
        int i = aVarB.a;
        if (i > 0) {
            super.setImageResource(i);
        }
        int i2 = aVarB.b;
        if (i2 > 0) {
            super.setBackgroundResource(i2);
        }
    }

    public GifImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        u78.a aVarB = u78.b(this, attributeSet, i, 0);
        this.e = aVarB.c;
        int i2 = aVarB.a;
        if (i2 > 0) {
            super.setImageResource(i2);
        }
        int i3 = aVarB.b;
        if (i3 > 0) {
            super.setBackgroundResource(i3);
        }
    }
}
