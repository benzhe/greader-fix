package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import java.util.Objects;

/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {
    public final Runnable e;
    public final Runnable f;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            ContentLoadingProgressBar.this.setVisibility(8);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            System.currentTimeMillis();
            Objects.requireNonNull(contentLoadingProgressBar);
            ContentLoadingProgressBar.this.setVisibility(0);
        }
    }

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.e = new a();
        this.f = new b();
    }
}
