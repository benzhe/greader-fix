package net.frakbot.glowpadbackport;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.Log;
import defpackage.jo;
import java.util.ArrayList;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public class PointCloud {
    private static int INNER_POINTS = 8;
    private static final float MAX_POINT_SIZE = 4.0f;
    private static final float MIN_POINT_SIZE = 2.0f;
    private static final float PI = 3.1415927f;
    private static final String TAG = "PointCloud";
    private float mCenterX;
    private float mCenterY;
    private Drawable mDrawable;
    private float mInnerRadius;
    private float mOuterRadius;
    private Paint mPaint;
    private ArrayList<Point> mPointCloud = new ArrayList<>();
    private float mScale = 1.0f;
    public WaveManager waveManager = new WaveManager();
    public GlowManager glowManager = new GlowManager();

    public class GlowManager {
        private float x;
        private float y;
        private float radius = 0.0f;
        private float alpha = 0.0f;

        public GlowManager() {
        }

        public float getAlpha() {
            return this.alpha;
        }

        public float getRadius() {
            return this.radius;
        }

        public float getX() {
            return this.x;
        }

        public float getY() {
            return this.y;
        }

        public void setAlpha(float f) {
            this.alpha = f;
        }

        public void setRadius(float f) {
            this.radius = f;
        }

        public void setX(float f) {
            this.x = f;
        }

        public void setY(float f) {
            this.y = f;
        }
    }

    public class Point {
        public float radius;
        public float x;
        public float y;

        public Point(float f, float f2, float f3) {
            this.x = f;
            this.y = f2;
            this.radius = f3;
        }
    }

    public class WaveManager {
        private float radius = 50.0f;
        private float width = 200.0f;
        private float alpha = 0.0f;

        public WaveManager() {
        }

        public float getAlpha() {
            return this.alpha;
        }

        public float getRadius() {
            return this.radius;
        }

        public void setAlpha(float f) {
            this.alpha = f;
        }

        public void setRadius(float f) {
            this.radius = f;
        }
    }

    public PointCloud(Drawable drawable) {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setFilterBitmap(true);
        this.mPaint.setColor(Color.rgb(Base64.BASELENGTH, Base64.BASELENGTH, Base64.BASELENGTH));
        this.mPaint.setAntiAlias(true);
        this.mPaint.setDither(true);
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
    }

    private static float hypot(float f, float f2) {
        return (float) Math.sqrt((f2 * f2) + (f * f));
    }

    private float interp(float f, float f2, float f3) {
        return jo.a(f2, f, f3, f);
    }

    private static float max(float f, float f2) {
        return f > f2 ? f : f2;
    }

    public void draw(Canvas canvas) {
        ArrayList<Point> arrayList = this.mPointCloud;
        canvas.save();
        float f = this.mScale;
        canvas.scale(f, f, this.mCenterX, this.mCenterY);
        for (int i = 0; i < arrayList.size(); i++) {
            Point point = arrayList.get(i);
            float fInterp = interp(MAX_POINT_SIZE, MIN_POINT_SIZE, point.radius / this.mOuterRadius);
            float f2 = point.x + this.mCenterX;
            float f3 = point.y + this.mCenterY;
            int alphaForPoint = getAlphaForPoint(point);
            if (alphaForPoint != 0) {
                if (this.mDrawable != null) {
                    canvas.save();
                    float f4 = fInterp / MAX_POINT_SIZE;
                    canvas.scale(f4, f4, f2, f3);
                    canvas.translate(f2 - (this.mDrawable.getIntrinsicWidth() * 0.5f), f3 - (this.mDrawable.getIntrinsicHeight() * 0.5f));
                    this.mDrawable.setAlpha(alphaForPoint);
                    this.mDrawable.draw(canvas);
                    canvas.restore();
                } else {
                    this.mPaint.setAlpha(alphaForPoint);
                    canvas.drawCircle(f2, f3, fInterp, this.mPaint);
                }
            }
        }
        canvas.restore();
    }

    public int getAlphaForPoint(Point point) {
        float fMax;
        float fMax2 = 0.0f;
        if (hypot(this.glowManager.x - point.x, this.glowManager.y - point.y) < this.glowManager.radius) {
            fMax = this.glowManager.alpha * max(0.0f, (float) Math.pow((float) Math.cos((r0 * 0.7853982f) / this.glowManager.radius), 10.0d));
        } else {
            fMax = 0.0f;
        }
        float fHypot = hypot(point.x, point.y) - this.waveManager.radius;
        if (fHypot < this.waveManager.width * 0.5f && fHypot < 0.0f) {
            fMax2 = this.waveManager.alpha * max(0.0f, (float) Math.pow((float) Math.cos((fHypot * 0.7853982f) / this.waveManager.width), 20.0d));
        }
        return (int) (max(fMax, fMax2) * 255.0f);
    }

    public int getPointsMultiplier() {
        return INNER_POINTS;
    }

    public float getScale() {
        return this.mScale;
    }

    public void makePointCloud(float f, float f2) {
        float f3 = f;
        if (f3 == 0.0f) {
            Log.w(TAG, "Must specify an inner radius");
            return;
        }
        this.mOuterRadius = f2;
        this.mInnerRadius = f3;
        this.mPointCloud.clear();
        float f4 = f2 - f3;
        float f5 = 6.2831855f;
        float f6 = (f3 * 6.2831855f) / INNER_POINTS;
        int iRound = Math.round(f4 / f6);
        float f7 = f4 / iRound;
        int i = 0;
        while (i <= iRound) {
            int i2 = (int) ((f3 * f5) / f6);
            float f8 = 1.5707964f;
            float f9 = f5 / i2;
            int i3 = 0;
            while (i3 < i2) {
                double d = f3;
                double d2 = f8;
                f8 += f9;
                this.mPointCloud.add(new Point((float) (Math.cos(d2) * d), (float) (Math.sin(d2) * d), f3));
                i3++;
                f6 = f6;
            }
            i++;
            f3 += f7;
            f5 = 6.2831855f;
        }
    }

    public void setCenter(float f, float f2) {
        this.mCenterX = f;
        this.mCenterY = f2;
    }

    public void setPointsMultiplier(int i) {
        INNER_POINTS = i;
        makePointCloud(this.mInnerRadius, this.mOuterRadius);
    }

    public void setScale(float f) {
        this.mScale = f;
    }
}
