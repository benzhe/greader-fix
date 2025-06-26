package com.noinnion.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListView;
import com.noinnion.android.R$styleable;

/* loaded from: classes2.dex */
public class TouchListView extends ListView {
    public ImageView e;
    public WindowManager f;
    public WindowManager.LayoutParams g;
    public int h;
    public int i;
    public int j;
    public int k;
    public b l;
    public c m;
    public d n;
    public int o;
    public int p;
    public int q;
    public GestureDetector r;
    public int s;
    public Rect t;
    public Bitmap u;
    public final int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            TouchListView touchListView = TouchListView.this;
            ImageView imageView = touchListView.e;
            if (imageView == null) {
                return false;
            }
            if (f > 1000.0f) {
                imageView.getDrawingRect(touchListView.t);
                if (motionEvent2.getX() > (r3.right * 2) / 3) {
                    TouchListView.this.b();
                    TouchListView touchListView2 = TouchListView.this;
                    touchListView2.n.remove(touchListView2.i);
                    TouchListView.this.c(true);
                }
            }
            return true;
        }
    }

    public interface b {
        void a(int i, int i2);
    }

    public interface c {
        void m(int i, int i2);
    }

    public interface d {
        void remove(int i);
    }

    public TouchListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean a(View view) {
        return view.findViewById(this.y) != null;
    }

    @Override // android.widget.ListView
    public final void addFooterView(View view, Object obj, boolean z) {
        int i = this.s;
        if (i == 2 || i == 1) {
            throw new RuntimeException("Footers are not supported with TouchListView in conjunction with remove_mode");
        }
    }

    @Override // android.widget.ListView
    public final void addHeaderView(View view, Object obj, boolean z) {
        throw new RuntimeException("Headers are not supported with TouchListView");
    }

    public final void b() {
        if (this.e != null) {
            ((WindowManager) getContext().getSystemService("window")).removeView(this.e);
            this.e.setImageDrawable(null);
            this.e = null;
        }
        Bitmap bitmap = this.u;
        if (bitmap != null) {
            bitmap.recycle();
            this.u = null;
        }
    }

    public final void c(boolean z) {
        int i = 0;
        while (true) {
            View childAt = getChildAt(i);
            if (childAt == null) {
                if (z) {
                    int firstVisiblePosition = getFirstVisiblePosition();
                    int top = getChildAt(0).getTop();
                    setAdapter(getAdapter());
                    setSelectionFromTop(firstVisiblePosition, top);
                }
                layoutChildren();
                childAt = getChildAt(i);
                if (childAt == null) {
                    return;
                }
            }
            if (a(childAt)) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.height = this.w;
                childAt.setLayoutParams(layoutParams);
                childAt.setVisibility(0);
            }
            i++;
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int x;
        int y;
        int iPointToPosition;
        if (this.n != null && this.r == null && this.s == 0) {
            this.r = new GestureDetector(getContext(), new a());
        }
        if ((this.l != null || this.m != null) && motionEvent.getAction() == 0 && (iPointToPosition = pointToPosition((x = (int) motionEvent.getX()), (y = (int) motionEvent.getY()))) != -1) {
            View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
            if (a(childAt)) {
                this.j = y - childAt.getTop();
                this.k = ((int) motionEvent.getRawY()) - y;
                View viewFindViewById = childAt.findViewById(this.y);
                Rect rect = this.t;
                rect.left = viewFindViewById.getLeft();
                rect.right = viewFindViewById.getRight();
                rect.top = viewFindViewById.getTop();
                rect.bottom = viewFindViewById.getBottom();
                if (rect.left < x && x < rect.right) {
                    childAt.setDrawingCacheEnabled(true);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
                    childAt.setDrawingCacheEnabled(false);
                    Rect rect2 = new Rect();
                    getGlobalVisibleRect(rect2, null);
                    int i = rect2.left;
                    b();
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    this.g = layoutParams;
                    layoutParams.gravity = 51;
                    layoutParams.x = i;
                    layoutParams.y = (y - this.j) + this.k;
                    layoutParams.height = -2;
                    layoutParams.width = -2;
                    layoutParams.flags = 408;
                    layoutParams.format = -3;
                    layoutParams.windowAnimations = 0;
                    ImageView imageView = new ImageView(getContext());
                    imageView.setBackgroundColor(this.z);
                    imageView.setImageBitmap(bitmapCreateBitmap);
                    this.u = bitmapCreateBitmap;
                    WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
                    this.f = windowManager;
                    windowManager.addView(imageView, this.g);
                    this.e = imageView;
                    this.h = iPointToPosition;
                    this.i = iPointToPosition;
                    int height = getHeight();
                    this.q = height;
                    int i2 = this.v;
                    this.o = Math.min(y - i2, height / 3);
                    this.p = Math.max(y + i2, (this.q * 2) / 3);
                    return false;
                }
                this.e = null;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0094  */
    @Override // android.widget.AbsListView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.widget.TouchListView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setDragListener(b bVar) {
        this.l = bVar;
    }

    public void setDropListener(c cVar) {
        this.m = cVar;
    }

    public void setRemoveListener(d dVar) {
        this.n = dVar;
    }

    public TouchListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = -1;
        this.t = new Rect();
        this.w = -1;
        this.x = -1;
        this.y = -1;
        this.z = 0;
        this.v = ViewConfiguration.get(context).getScaledTouchSlop();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.TouchListView, 0, 0);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TouchListView_normal_height, 0);
            this.w = dimensionPixelSize;
            this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TouchListView_expanded_height, dimensionPixelSize);
            this.y = typedArrayObtainStyledAttributes.getResourceId(R$styleable.TouchListView_grabber, -1);
            this.z = typedArrayObtainStyledAttributes.getColor(R$styleable.TouchListView_dragndrop_background, 0);
            this.s = typedArrayObtainStyledAttributes.getInt(R$styleable.TouchListView_remove_mode, -1);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.ListView
    public final void addHeaderView(View view) {
        throw new RuntimeException("Headers are not supported with TouchListView");
    }

    @Override // android.widget.ListView
    public final void addFooterView(View view) {
        int i = this.s;
        if (i == 2 || i == 1) {
            throw new RuntimeException("Footers are not supported with TouchListView in conjunction with remove_mode");
        }
    }
}
