package com.noinnion.android.view.progress;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.noinnion.android.R$styleable;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;

/* loaded from: classes2.dex */
public class DonutProgress extends View {
    public String A;
    public float B;
    public final float C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final float H;
    public final float I;
    public final int J;
    public Paint e;
    public Paint f;
    public Paint g;
    public Paint h;
    public Paint i;
    public RectF j;
    public RectF k;
    public float l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public float t;
    public float u;
    public int v;
    public String w;
    public String x;
    public String y;
    public float z;

    public DonutProgress(Context context) {
        this(context, null);
    }

    private float getProgressAngle() {
        return (getProgress() / this.p) * 360.0f;
    }

    public void a() {
        TextPaint textPaint = new TextPaint();
        this.h = textPaint;
        textPaint.setColor(this.m);
        this.h.setTextSize(this.l);
        this.h.setAntiAlias(true);
        TextPaint textPaint2 = new TextPaint();
        this.i = textPaint2;
        textPaint2.setColor(this.n);
        this.i.setTextSize(this.z);
        this.i.setAntiAlias(true);
        Paint paint = new Paint();
        this.e = paint;
        paint.setColor(this.q);
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setAntiAlias(true);
        this.e.setStrokeWidth(this.t);
        Paint paint2 = new Paint();
        this.f = paint2;
        paint2.setColor(this.r);
        this.f.setStyle(Paint.Style.STROKE);
        this.f.setAntiAlias(true);
        this.f.setStrokeWidth(this.u);
        Paint paint3 = new Paint();
        this.g = paint3;
        paint3.setColor(this.v);
        this.g.setAntiAlias(true);
    }

    public final int b(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int i2 = this.J;
        return mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
    }

    public int getFinishedStrokeColor() {
        return this.q;
    }

    public float getFinishedStrokeWidth() {
        return this.t;
    }

    public int getInnerBackgroundColor() {
        return this.v;
    }

    public String getInnerBottomText() {
        return this.A;
    }

    public int getInnerBottomTextColor() {
        return this.n;
    }

    public float getInnerBottomTextSize() {
        return this.z;
    }

    public int getMax() {
        return this.p;
    }

    public String getPrefixText() {
        return this.w;
    }

    public int getProgress() {
        return this.o;
    }

    public int getStartingDegree() {
        return this.s;
    }

    public String getSuffixText() {
        return this.x;
    }

    public String getText() {
        return this.y;
    }

    public int getTextColor() {
        return this.m;
    }

    public float getTextSize() {
        return this.l;
    }

    public int getUnfinishedStrokeColor() {
        return this.r;
    }

    public float getUnfinishedStrokeWidth() {
        return this.u;
    }

    @Override // android.view.View
    public void invalidate() {
        a();
        super.invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float fMax = Math.max(this.t, this.u);
        this.j.set(fMax, fMax, getWidth() - fMax, getHeight() - fMax);
        this.k.set(fMax, fMax, getWidth() - fMax, getHeight() - fMax);
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, (Math.abs(this.t - this.u) + (getWidth() - Math.min(this.t, this.u))) / 2.0f, this.g);
        canvas.drawArc(this.j, getStartingDegree(), getProgressAngle(), false, this.e);
        canvas.drawArc(this.k, getProgressAngle() + getStartingDegree(), 360.0f - getProgressAngle(), false, this.f);
        String str = this.y;
        if (str == null) {
            str = this.w + this.o + this.x;
        }
        if (!TextUtils.isEmpty(str)) {
            canvas.drawText(str, (getWidth() - this.h.measureText(str)) / 2.0f, (getWidth() - (this.h.ascent() + this.h.descent())) / 2.0f, this.h);
        }
        if (TextUtils.isEmpty(getInnerBottomText())) {
            return;
        }
        this.i.setTextSize(this.z);
        canvas.drawText(getInnerBottomText(), (getWidth() - this.i.measureText(getInnerBottomText())) / 2.0f, (getHeight() - this.B) - ((this.h.ascent() + this.h.descent()) / 2.0f), this.i);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(b(i), b(i2));
        this.B = getHeight() - ((getHeight() * 3) / 4);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.m = bundle.getInt("text_color");
        this.l = bundle.getFloat("text_size");
        this.z = bundle.getFloat("inner_bottom_text_size");
        this.A = bundle.getString("inner_bottom_text");
        this.n = bundle.getInt("inner_bottom_text_color");
        this.q = bundle.getInt("finished_stroke_color");
        this.r = bundle.getInt("unfinished_stroke_color");
        this.t = bundle.getFloat("finished_stroke_width");
        this.u = bundle.getFloat("unfinished_stroke_width");
        this.v = bundle.getInt("inner_background_color");
        a();
        setMax(bundle.getInt("max"));
        setStartingDegree(bundle.getInt("starting_degree"));
        setProgress(bundle.getInt("progress"));
        this.w = bundle.getString("prefix");
        this.x = bundle.getString("suffix");
        this.y = bundle.getString(AtomText.TYPE_TEXT);
        super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putInt("text_color", getTextColor());
        bundle.putFloat("text_size", getTextSize());
        bundle.putFloat("inner_bottom_text_size", getInnerBottomTextSize());
        bundle.putFloat("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putString("inner_bottom_text", getInnerBottomText());
        bundle.putInt("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putInt("finished_stroke_color", getFinishedStrokeColor());
        bundle.putInt("unfinished_stroke_color", getUnfinishedStrokeColor());
        bundle.putInt("max", getMax());
        bundle.putInt("starting_degree", getStartingDegree());
        bundle.putInt("progress", getProgress());
        bundle.putString("suffix", getSuffixText());
        bundle.putString("prefix", getPrefixText());
        bundle.putString(AtomText.TYPE_TEXT, getText());
        bundle.putFloat("finished_stroke_width", getFinishedStrokeWidth());
        bundle.putFloat("unfinished_stroke_width", getUnfinishedStrokeWidth());
        bundle.putInt("inner_background_color", getInnerBackgroundColor());
        return bundle;
    }

    public void setFinishedStrokeColor(int i) {
        this.q = i;
        invalidate();
    }

    public void setFinishedStrokeWidth(float f) {
        this.t = f;
        invalidate();
    }

    public void setInnerBackgroundColor(int i) {
        this.v = i;
        invalidate();
    }

    public void setInnerBottomText(String str) {
        this.A = str;
        invalidate();
    }

    public void setInnerBottomTextColor(int i) {
        this.n = i;
        invalidate();
    }

    public void setInnerBottomTextSize(float f) {
        this.z = f;
        invalidate();
    }

    public void setMax(int i) {
        if (i > 0) {
            this.p = i;
            invalidate();
        }
    }

    public void setPrefixText(String str) {
        this.w = str;
        invalidate();
    }

    public void setProgress(int i) {
        this.o = i;
        if (i > getMax()) {
            this.o %= getMax();
        }
        invalidate();
    }

    public void setStartingDegree(int i) {
        this.s = i;
        invalidate();
    }

    public void setSuffixText(String str) {
        this.x = str;
        invalidate();
    }

    public void setText(String str) {
        this.y = str;
        invalidate();
    }

    public void setTextColor(int i) {
        this.m = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.l = f;
        invalidate();
    }

    public void setUnfinishedStrokeColor(int i) {
        this.r = i;
        invalidate();
    }

    public void setUnfinishedStrokeWidth(float f) {
        this.u = f;
        invalidate();
    }

    public DonutProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DonutProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new RectF();
        this.k = new RectF();
        this.o = 0;
        this.w = "";
        this.x = "%";
        this.y = null;
        int iRgb = Color.rgb(66, 145, 241);
        this.D = iRgb;
        int iRgb2 = Color.rgb(204, 204, 204);
        this.E = iRgb2;
        int iRgb3 = Color.rgb(66, 145, 241);
        this.F = iRgb3;
        int iRgb4 = Color.rgb(66, 145, 241);
        this.G = iRgb4;
        float f = getResources().getDisplayMetrics().scaledDensity * 18.0f;
        this.H = f;
        this.J = (int) ((getResources().getDisplayMetrics().density * 100.0f) + 0.5f);
        float f2 = (getResources().getDisplayMetrics().density * 4.0f) + 0.5f;
        this.C = f2;
        float f3 = getResources().getDisplayMetrics().scaledDensity * 18.0f;
        this.I = f3;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.DonutProgress, i, 0);
        this.q = typedArrayObtainStyledAttributes.getColor(R$styleable.DonutProgress_donut_finished_color, iRgb);
        this.r = typedArrayObtainStyledAttributes.getColor(R$styleable.DonutProgress_donut_unfinished_color, iRgb2);
        this.m = typedArrayObtainStyledAttributes.getColor(R$styleable.DonutProgress_donut_text_color, iRgb3);
        this.l = typedArrayObtainStyledAttributes.getDimension(R$styleable.DonutProgress_donut_text_size, f);
        setMax(typedArrayObtainStyledAttributes.getInt(R$styleable.DonutProgress_donut_max, 100));
        setProgress(typedArrayObtainStyledAttributes.getInt(R$styleable.DonutProgress_donut_progress, 0));
        this.t = typedArrayObtainStyledAttributes.getDimension(R$styleable.DonutProgress_donut_finished_stroke_width, f2);
        this.u = typedArrayObtainStyledAttributes.getDimension(R$styleable.DonutProgress_donut_unfinished_stroke_width, f2);
        int i2 = R$styleable.DonutProgress_donut_prefix_text;
        if (typedArrayObtainStyledAttributes.getString(i2) != null) {
            this.w = typedArrayObtainStyledAttributes.getString(i2);
        }
        int i3 = R$styleable.DonutProgress_donut_suffix_text;
        if (typedArrayObtainStyledAttributes.getString(i3) != null) {
            this.x = typedArrayObtainStyledAttributes.getString(i3);
        }
        int i4 = R$styleable.DonutProgress_donut_text;
        if (typedArrayObtainStyledAttributes.getString(i4) != null) {
            this.y = typedArrayObtainStyledAttributes.getString(i4);
        }
        this.v = typedArrayObtainStyledAttributes.getColor(R$styleable.DonutProgress_donut_background_color, 0);
        this.z = typedArrayObtainStyledAttributes.getDimension(R$styleable.DonutProgress_donut_inner_bottom_text_size, f3);
        this.n = typedArrayObtainStyledAttributes.getColor(R$styleable.DonutProgress_donut_inner_bottom_text_color, iRgb4);
        this.A = typedArrayObtainStyledAttributes.getString(R$styleable.DonutProgress_donut_inner_bottom_text);
        this.s = typedArrayObtainStyledAttributes.getInt(R$styleable.DonutProgress_donut_circle_starting_degree, 0);
        typedArrayObtainStyledAttributes.recycle();
        a();
    }
}
