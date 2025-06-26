package com.thebluealliance.spectrum;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.thebluealliance.spectrum.SpectrumPreference;
import com.thebluealliance.spectrum.internal.ColorItem;
import defpackage.r27;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* loaded from: classes2.dex */
public class SpectrumPalette extends LinearLayout {
    public int e;
    public int f;
    public int[] g;
    public int h;
    public a i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public int r;
    public int s;
    public boolean t;
    public EventBus u;
    public List<ColorItem> v;

    public interface a {
    }

    public SpectrumPalette(Context context) {
        super(context);
        this.j = false;
        this.k = false;
        this.l = -1;
        this.m = 0;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = false;
        this.r = 2;
        this.s = -1;
        this.t = false;
        this.v = new ArrayList();
        f();
    }

    private int getOriginalPaddingBottom() {
        return this.p;
    }

    private int getOriginalPaddingTop() {
        return this.o;
    }

    public final int a(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if ((i3 * 2 * this.f) + (this.e * i3) > i) {
                return i2;
            }
            i2 = i3;
        }
    }

    public final int b(int i) {
        int[] iArr = this.g;
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length / i;
        if (iArr.length % i != 0) {
            length++;
        }
        return ((this.f * 2) + this.e) * length;
    }

    public final int c(int i) {
        return ((this.f * 2) + this.e) * i;
    }

    public void d() {
        if (this.t && this.r == this.s) {
            return;
        }
        this.t = true;
        this.s = this.r;
        removeAllViews();
        if (this.g == null) {
            return;
        }
        LinearLayout linearLayoutE = e();
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.g;
            if (i >= iArr.length) {
                break;
            }
            int i3 = iArr[i];
            ColorItem colorItem = new ColorItem(getContext(), i3, i3 == this.h, this.u);
            int i4 = this.e;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i4);
            int i5 = this.f;
            layoutParams.setMargins(i5, i5, i5, i5);
            colorItem.setLayoutParams(layoutParams);
            int i6 = this.m;
            if (i6 != 0) {
                colorItem.setOutlineWidth(i6);
            }
            this.v.add(colorItem);
            linearLayoutE.addView(colorItem);
            i2++;
            if (i2 == this.r) {
                addView(linearLayoutE);
                linearLayoutE = e();
                i2 = 0;
            }
            i++;
        }
        if (i2 > 0) {
            while (i2 < this.r) {
                ImageView imageView = new ImageView(getContext());
                int i7 = this.e;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i7, i7);
                int i8 = this.f;
                layoutParams2.setMargins(i8, i8, i8, i8);
                imageView.setLayoutParams(layoutParams2);
                linearLayoutE.addView(imageView);
                i2++;
            }
            addView(linearLayoutE);
        }
    }

    public final LinearLayout e() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        linearLayout.setGravity(1);
        return linearLayout;
    }

    public final void f() {
        EventBus eventBus = new EventBus();
        this.u = eventBus;
        eventBus.register(this);
        this.e = getResources().getDimensionPixelSize(R$dimen.color_item_small);
        this.f = getResources().getDimensionPixelSize(R$dimen.color_item_margins_small);
        setOrientation(1);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.k) {
            size = getPaddingRight() + getPaddingLeft() + c(this.l);
            this.r = this.l;
        } else if (mode == 1073741824) {
            this.r = a(size - (getPaddingRight() + getPaddingLeft()));
        } else if (mode == Integer.MIN_VALUE) {
            this.r = a(size - (getPaddingRight() + getPaddingLeft()));
        } else {
            int paddingRight = getPaddingRight() + getPaddingLeft() + c(4);
            this.r = 4;
            size = paddingRight;
        }
        this.n = (size - (getPaddingRight() + (getPaddingLeft() + c(this.r)))) / 2;
        if (mode2 != 1073741824) {
            if (mode2 == Integer.MIN_VALUE) {
                int iB = b(this.r) + this.o + this.p;
                if (this.j) {
                    iB += this.n * 2;
                }
                size2 = Math.min(iB, size2);
            } else {
                size2 = b(this.r) + this.o + this.p;
                if (this.j) {
                    size2 += this.n * 2;
                }
            }
        }
        if (this.j) {
            int paddingLeft = getPaddingLeft();
            int i3 = this.o + this.n;
            int paddingRight2 = getPaddingRight();
            int i4 = this.p + this.n;
            this.q = true;
            setPadding(paddingLeft, i3, paddingRight2, i4);
        }
        d();
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Subscribe
    public void onSelectedColorChanged(r27 r27Var) {
        int i = r27Var.a;
        this.h = i;
        a aVar = this.i;
        if (aVar != null) {
            SpectrumPreference.b bVar = (SpectrumPreference.b) aVar;
            SpectrumPreference spectrumPreference = SpectrumPreference.this;
            spectrumPreference.g = i;
            if (spectrumPreference.h) {
                spectrumPreference.onClick(null, -1);
                if (SpectrumPreference.this.getDialog() != null) {
                    SpectrumPreference.this.getDialog().dismiss();
                }
            }
        }
    }

    public void setColors(int[] iArr) {
        this.g = iArr;
        this.t = false;
        d();
    }

    public void setFixedColumnCount(int i) {
        if (i <= 0) {
            this.k = false;
            this.l = -1;
            requestLayout();
            invalidate();
            return;
        }
        Log.d("spectrum", "set column count to " + i);
        this.k = true;
        this.l = i;
        requestLayout();
        invalidate();
    }

    public void setOnColorSelectedListener(a aVar) {
        this.i = aVar;
    }

    public void setOutlineWidth(int i) {
        this.m = i;
        Iterator<ColorItem> it = this.v.iterator();
        while (it.hasNext()) {
            it.next().setOutlineWidth(i);
        }
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (this.q) {
            return;
        }
        this.o = i2;
        this.p = i4;
    }

    public void setSelectedColor(int i) {
        this.h = i;
        this.u.post(new r27(i));
    }

    public SpectrumPalette(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = false;
        this.k = false;
        this.l = -1;
        this.m = 0;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = false;
        this.r = 2;
        this.s = -1;
        this.t = false;
        this.v = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R$styleable.SpectrumPalette, 0, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.SpectrumPalette_spectrum_colors, 0);
        if (resourceId != 0) {
            this.g = getContext().getResources().getIntArray(resourceId);
        }
        this.j = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SpectrumPalette_spectrum_autoPadding, false);
        this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SpectrumPalette_spectrum_outlineWidth, 0);
        int i = typedArrayObtainStyledAttributes.getInt(R$styleable.SpectrumPalette_spectrum_columnCount, -1);
        this.l = i;
        if (i != -1) {
            this.k = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        this.o = getPaddingTop();
        this.p = getPaddingBottom();
        f();
    }
}
