package butterknife;

/* loaded from: classes.dex */
public interface Unbinder {
    public static final Unbinder EMPTY = new Unbinder() { // from class: an
        @Override // butterknife.Unbinder
        public final void unbind() {
        }
    };

    void unbind();
}
