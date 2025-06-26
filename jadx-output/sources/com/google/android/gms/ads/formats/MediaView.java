package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import defpackage.k70;
import defpackage.l70;

@Deprecated
/* loaded from: classes.dex */
public class MediaView extends FrameLayout {
    public MediaContent e;
    public boolean f;
    public k70 g;
    public ImageView.ScaleType h;
    public boolean i;
    public l70 j;

    public MediaView(Context context) {
        super(context);
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.i = true;
        this.h = scaleType;
        l70 l70Var = this.j;
        if (l70Var != null) {
            l70Var.a(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.f = true;
        this.e = mediaContent;
        k70 k70Var = this.g;
        if (k70Var != null) {
            k70Var.a(mediaContent);
        }
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
