package okhttp3.internal.publicsuffix;

import defpackage.at7;
import defpackage.co7;
import defpackage.ek7;
import defpackage.fk7;
import defpackage.gm7;
import defpackage.gt7;
import defpackage.hk7;
import defpackage.im7;
import defpackage.jo;
import defpackage.lm7;
import defpackage.n56;
import defpackage.qn7;
import defpackage.rn7;
import defpackage.sn7;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {(byte) 42};
    private static final List<String> PREVAILING_RULE = n56.r1("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            boolean z;
            int iAnd;
            int iAnd2;
            int length = bArr.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = (i3 + length) / 2;
                while (i4 > -1 && bArr[i4] != ((byte) 10)) {
                    i4--;
                }
                int i5 = i4 + 1;
                int i6 = 1;
                while (true) {
                    i2 = i5 + i6;
                    if (bArr[i2] == ((byte) 10)) {
                        break;
                    }
                    i6++;
                }
                int i7 = i2 - i5;
                int i8 = i;
                boolean z2 = false;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    if (z2) {
                        iAnd = 46;
                        z = false;
                    } else {
                        z = z2;
                        iAnd = Util.and(bArr2[i8][i9], Base64.BASELENGTH);
                    }
                    iAnd2 = iAnd - Util.and(bArr[i5 + i10], Base64.BASELENGTH);
                    if (iAnd2 != 0) {
                        break;
                    }
                    i10++;
                    i9++;
                    if (i10 == i7) {
                        break;
                    }
                    if (bArr2[i8].length != i9) {
                        z2 = z;
                    } else {
                        if (i8 == bArr2.length - 1) {
                            break;
                        }
                        i8++;
                        z2 = true;
                        i9 = -1;
                    }
                }
                if (iAnd2 >= 0) {
                    if (iAnd2 <= 0) {
                        int i11 = i7 - i10;
                        int length2 = bArr2[i8].length - i9;
                        int length3 = bArr2.length;
                        for (int i12 = i8 + 1; i12 < length3; i12++) {
                            length2 += bArr2[i12].length;
                        }
                        if (length2 >= i11) {
                            if (length2 <= i11) {
                                Charset charset = StandardCharsets.UTF_8;
                                im7.d(charset, "UTF_8");
                                return new String(bArr, i5, i7, charset);
                            }
                        }
                    }
                    i3 = i2 + 1;
                }
                length = i5 - 1;
            }
            return null;
        }

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    /* renamed from: okhttp3.internal.publicsuffix.PublicSuffixDatabase$findMatchingRule$1, reason: invalid class name */
    public final /* synthetic */ class AnonymousClass1 extends lm7 {
        public AnonymousClass1(PublicSuffixDatabase publicSuffixDatabase) {
            super(publicSuffixDatabase, PublicSuffixDatabase.class, "publicSuffixListBytes", "getPublicSuffixListBytes()[B", 0);
        }

        @Override // defpackage.lm7, defpackage.mn7
        public Object get() {
            return PublicSuffixDatabase.access$getPublicSuffixListBytes$p((PublicSuffixDatabase) this.receiver);
        }

        @Override // defpackage.lm7
        public void set(Object obj) {
            ((PublicSuffixDatabase) this.receiver).publicSuffixListBytes = (byte[]) obj;
        }
    }

    public static final /* synthetic */ byte[] access$getPublicSuffixListBytes$p(PublicSuffixDatabase publicSuffixDatabase) {
        byte[] bArr = publicSuffixDatabase.publicSuffixListBytes;
        if (bArr != null) {
            return bArr;
        }
        im7.k("publicSuffixListBytes");
        throw null;
    }

    private final List<String> findMatchingRule(List<String> list) throws InterruptedException {
        String str;
        String strBinarySearch;
        String strBinarySearch2;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            readTheListUninterruptibly();
        }
        if (!(this.publicSuffixListBytes != null)) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.".toString());
        }
        int size = list.size();
        byte[][] bArr = new byte[size][];
        for (int i = 0; i < size; i++) {
            String str2 = list.get(i);
            Charset charset = StandardCharsets.UTF_8;
            im7.d(charset, "UTF_8");
            Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = str2.getBytes(charset);
            im7.d(bytes, "(this as java.lang.String).getBytes(charset)");
            bArr[i] = bytes;
        }
        int i2 = 0;
        while (true) {
            str = null;
            if (i2 >= size) {
                strBinarySearch = null;
                break;
            }
            Companion companion = Companion;
            byte[] bArr2 = this.publicSuffixListBytes;
            if (bArr2 == null) {
                im7.k("publicSuffixListBytes");
                throw null;
            }
            strBinarySearch = companion.binarySearch(bArr2, bArr, i2);
            if (strBinarySearch != null) {
                break;
            }
            i2++;
        }
        if (size > 1) {
            byte[][] bArr3 = (byte[][]) bArr.clone();
            int length = bArr3.length - 1;
            for (int i3 = 0; i3 < length; i3++) {
                bArr3[i3] = WILDCARD_LABEL;
                Companion companion2 = Companion;
                byte[] bArr4 = this.publicSuffixListBytes;
                if (bArr4 == null) {
                    im7.k("publicSuffixListBytes");
                    throw null;
                }
                strBinarySearch2 = companion2.binarySearch(bArr4, bArr3, i3);
                if (strBinarySearch2 != null) {
                    break;
                }
            }
            strBinarySearch2 = null;
        } else {
            strBinarySearch2 = null;
        }
        if (strBinarySearch2 != null) {
            int i4 = size - 1;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    break;
                }
                Companion companion3 = Companion;
                byte[] bArr5 = this.publicSuffixExceptionListBytes;
                if (bArr5 == null) {
                    im7.k("publicSuffixExceptionListBytes");
                    throw null;
                }
                String strBinarySearch3 = companion3.binarySearch(bArr5, bArr, i5);
                if (strBinarySearch3 != null) {
                    str = strBinarySearch3;
                    break;
                }
                i5++;
            }
        }
        if (str != null) {
            return co7.v(EXCEPTION_MARKER + str, new char[]{FilenameUtils.EXTENSION_SEPARATOR}, false, 0, 6);
        }
        if (strBinarySearch == null && strBinarySearch2 == null) {
            return PREVAILING_RULE;
        }
        List<String> listV = strBinarySearch != null ? co7.v(strBinarySearch, new char[]{FilenameUtils.EXTENSION_SEPARATOR}, false, 0, 6) : hk7.e;
        List<String> listV2 = strBinarySearch2 != null ? co7.v(strBinarySearch2, new char[]{FilenameUtils.EXTENSION_SEPARATOR}, false, 0, 6) : hk7.e;
        return listV.size() > listV2.size() ? listV : listV2;
    }

    private final void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        at7 at7VarP = n56.p(new gt7(n56.e2(resourceAsStream)));
        try {
            byte[] bArrL0 = at7VarP.l0(at7VarP.readInt());
            byte[] bArrL02 = at7VarP.l0(at7VarP.readInt());
            n56.w(at7VarP, null);
            synchronized (this) {
                im7.c(bArrL0);
                this.publicSuffixListBytes = bArrL0;
                im7.c(bArrL02);
                this.publicSuffixExceptionListBytes = bArrL02;
            }
            this.readCompleteLatch.countDown();
        } finally {
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    Platform.Companion.get().log("Failed to read public suffix list", 5, e);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final List<String> splitDomain(String str) {
        int i = 0;
        List<String> listV = co7.v(str, new char[]{FilenameUtils.EXTENSION_SEPARATOR}, false, 0, 6);
        im7.e(listV, "$this$last");
        if (listV.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        if (!im7.a(listV.get(ek7.h(listV)), "")) {
            return listV;
        }
        im7.e(listV, "$this$dropLast");
        int size = listV.size() - 1;
        if (size < 0) {
            size = 0;
        }
        im7.e(listV, "$this$take");
        if (!(size >= 0)) {
            throw new IllegalArgumentException(jo.h("Requested element count ", size, " is less than zero.").toString());
        }
        if (size == 0) {
            return hk7.e;
        }
        if (size >= listV.size()) {
            return ek7.s(listV);
        }
        if (size == 1) {
            im7.e(listV, "$this$first");
            return n56.r1(ek7.f(listV));
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator<T> it = listV.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
            i++;
            if (i == size) {
                break;
            }
        }
        return ek7.n(arrayList);
    }

    public final String getEffectiveTldPlusOne(String str) throws InterruptedException, IOException {
        int size;
        int size2;
        im7.e(str, "domain");
        String unicode = IDN.toUnicode(str);
        im7.d(unicode, "unicodeDomain");
        List<String> listSplitDomain = splitDomain(unicode);
        List<String> listFindMatchingRule = findMatchingRule(listSplitDomain);
        int i = 0;
        if (listSplitDomain.size() == listFindMatchingRule.size() && listFindMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (listFindMatchingRule.get(0).charAt(0) == '!') {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size();
        } else {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size() + 1;
        }
        int i2 = size - size2;
        List<String> listSplitDomain2 = splitDomain(str);
        im7.e(listSplitDomain2, "$this$asSequence");
        sn7 fk7Var = new fk7(listSplitDomain2);
        im7.e(fk7Var, "$this$drop");
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(jo.h("Requested element count ", i2, " is less than zero.").toString());
        }
        if (i2 != 0) {
            fk7Var = fk7Var instanceof rn7 ? ((rn7) fk7Var).a(i2) : new qn7(fk7Var, i2);
        }
        im7.e(fk7Var, "$this$joinToString");
        im7.e(".", "separator");
        im7.e("", "prefix");
        im7.e("", "postfix");
        im7.e("...", "truncated");
        StringBuilder sb = new StringBuilder();
        im7.e(fk7Var, "$this$joinTo");
        im7.e(sb, "buffer");
        im7.e(".", "separator");
        im7.e("", "prefix");
        im7.e("", "postfix");
        im7.e("...", "truncated");
        sb.append((CharSequence) "");
        for (Object obj : fk7Var) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) ".");
            }
            n56.k(sb, obj, null);
        }
        sb.append((CharSequence) "");
        String string = sb.toString();
        im7.d(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public final void setListBytes(byte[] bArr, byte[] bArr2) {
        im7.e(bArr, "publicSuffixListBytes");
        im7.e(bArr2, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
