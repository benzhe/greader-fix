package defpackage;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class n9 implements Spannable {
    @Override // java.lang.CharSequence
    public char charAt(int i) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        throw null;
    }

    @Override // java.lang.CharSequence
    public int length() {
        throw null;
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        throw null;
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT < 29) {
            throw null;
        }
        throw null;
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT < 29) {
            throw null;
        }
        throw null;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        throw null;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        throw null;
    }

    public static final class a {
        public final TextPaint a;
        public final TextDirectionHeuristic b;
        public final int c;
        public final int d;

        public a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.a = textPaint;
            this.b = textDirectionHeuristic;
            this.c = i;
            this.d = i2;
        }

        public boolean a(a aVar) {
            int i = Build.VERSION.SDK_INT;
            if ((i >= 23 && (this.c != aVar.c || this.d != aVar.d)) || this.a.getTextSize() != aVar.a.getTextSize() || this.a.getTextScaleX() != aVar.a.getTextScaleX() || this.a.getTextSkewX() != aVar.a.getTextSkewX() || this.a.getLetterSpacing() != aVar.a.getLetterSpacing() || !TextUtils.equals(this.a.getFontFeatureSettings(), aVar.a.getFontFeatureSettings()) || this.a.getFlags() != aVar.a.getFlags()) {
                return false;
            }
            if (i >= 24) {
                if (!this.a.getTextLocales().equals(aVar.a.getTextLocales())) {
                    return false;
                }
            } else if (!this.a.getTextLocale().equals(aVar.a.getTextLocale())) {
                return false;
            }
            return this.a.getTypeface() == null ? aVar.a.getTypeface() == null : this.a.getTypeface().equals(aVar.a.getTypeface());
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return a(aVar) && this.b == aVar.b;
        }

        public int hashCode() {
            return Build.VERSION.SDK_INT >= 24 ? Objects.hash(Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Float.valueOf(this.a.getLetterSpacing()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocales(), this.a.getTypeface(), Boolean.valueOf(this.a.isElegantTextHeight()), this.b, Integer.valueOf(this.c), Integer.valueOf(this.d)) : Objects.hash(Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Float.valueOf(this.a.getLetterSpacing()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocale(), this.a.getTypeface(), Boolean.valueOf(this.a.isElegantTextHeight()), this.b, Integer.valueOf(this.c), Integer.valueOf(this.d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            StringBuilder sbZ = jo.z("textSize=");
            sbZ.append(this.a.getTextSize());
            sb.append(sbZ.toString());
            sb.append(", textScaleX=" + this.a.getTextScaleX());
            sb.append(", textSkewX=" + this.a.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            StringBuilder sbZ2 = jo.z(", letterSpacing=");
            sbZ2.append(this.a.getLetterSpacing());
            sb.append(sbZ2.toString());
            sb.append(", elegantTextHeight=" + this.a.isElegantTextHeight());
            if (i >= 24) {
                StringBuilder sbZ3 = jo.z(", textLocale=");
                sbZ3.append(this.a.getTextLocales());
                sb.append(sbZ3.toString());
            } else {
                StringBuilder sbZ4 = jo.z(", textLocale=");
                sbZ4.append(this.a.getTextLocale());
                sb.append(sbZ4.toString());
            }
            StringBuilder sbZ5 = jo.z(", typeface=");
            sbZ5.append(this.a.getTypeface());
            sb.append(sbZ5.toString());
            if (i >= 26) {
                StringBuilder sbZ6 = jo.z(", variationSettings=");
                sbZ6.append(this.a.getFontVariationSettings());
                sb.append(sbZ6.toString());
            }
            StringBuilder sbZ7 = jo.z(", textDir=");
            sbZ7.append(this.b);
            sb.append(sbZ7.toString());
            sb.append(", breakStrategy=" + this.c);
            sb.append(", hyphenationFrequency=" + this.d);
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return sb.toString();
        }

        public a(PrecomputedText.Params params) {
            this.a = params.getTextPaint();
            this.b = params.getTextDirection();
            this.c = params.getBreakStrategy();
            this.d = params.getHyphenationFrequency();
            int i = Build.VERSION.SDK_INT;
        }
    }
}
