package org.jsoup.parser;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;
import org.jsoup.UncheckedIOException;
import org.jsoup.helper.Validate;

/* loaded from: classes2.dex */
public final class CharacterReader {
    public static final char EOF = 65535;
    public static final int maxBufferLen = 32768;
    private static final int maxStringCacheLen = 12;
    private static final int minReadAheadLen = 1024;
    public static final int readAheadLimit = 24576;
    private static final int stringCacheSize = 512;
    private int bufLength;
    private int bufMark;
    private int bufPos;
    private int bufSplitPoint;
    private char[] charBuf;
    private boolean readFully;
    private Reader reader;
    private int readerPos;
    private String[] stringCache;

    public CharacterReader(Reader reader, int i) throws IOException {
        this.bufMark = -1;
        this.stringCache = new String[512];
        Validate.notNull(reader);
        Validate.isTrue(reader.markSupported());
        this.reader = reader;
        this.charBuf = new char[i > 32768 ? 32768 : i];
        bufferUp();
    }

    private void bufferUp() throws IOException {
        int i;
        int i2;
        boolean z;
        if (this.readFully || (i = this.bufPos) < this.bufSplitPoint) {
            return;
        }
        int i3 = this.bufMark;
        if (i3 != -1) {
            i2 = i - i3;
            i = i3;
        } else {
            i2 = 0;
        }
        try {
            long j = i;
            long jSkip = this.reader.skip(j);
            this.reader.mark(32768);
            int i4 = 0;
            while (true) {
                z = true;
                if (i4 > 1024) {
                    break;
                }
                Reader reader = this.reader;
                char[] cArr = this.charBuf;
                int i5 = reader.read(cArr, i4, cArr.length - i4);
                if (i5 == -1) {
                    this.readFully = true;
                }
                if (i5 <= 0) {
                    break;
                } else {
                    i4 += i5;
                }
            }
            this.reader.reset();
            if (i4 > 0) {
                if (jSkip != j) {
                    z = false;
                }
                Validate.isTrue(z);
                this.bufLength = i4;
                this.readerPos += i;
                this.bufPos = i2;
                if (this.bufMark != -1) {
                    this.bufMark = 0;
                }
                if (i4 > 24576) {
                    i4 = readAheadLimit;
                }
                this.bufSplitPoint = i4;
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    private static String cacheString(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return "";
        }
        int i3 = i2 * 31;
        int i4 = 0;
        int i5 = i;
        while (i4 < i2) {
            i3 = (i3 * 31) + cArr[i5];
            i4++;
            i5++;
        }
        int i6 = i3 & 511;
        String str = strArr[i6];
        if (str == null) {
            String str2 = new String(cArr, i, i2);
            strArr[i6] = str2;
            return str2;
        }
        if (rangeEquals(cArr, i, i2, str)) {
            return str;
        }
        String str3 = new String(cArr, i, i2);
        strArr[i6] = str3;
        return str3;
    }

    private boolean isEmptyNoBufferUp() {
        return this.bufPos >= this.bufLength;
    }

    public static boolean rangeEquals(char[] cArr, int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 == 0) {
                return true;
            }
            int i5 = i + 1;
            int i6 = i3 + 1;
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i = i5;
            i2 = i4;
            i3 = i6;
        }
    }

    public void advance() {
        this.bufPos++;
    }

    public void close() {
        Reader reader = this.reader;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.reader = null;
            this.charBuf = null;
            this.stringCache = null;
            throw th;
        }
        this.reader = null;
        this.charBuf = null;
        this.stringCache = null;
    }

    public char consume() throws IOException {
        bufferUp();
        char c = isEmptyNoBufferUp() ? EOF : this.charBuf[this.bufPos];
        this.bufPos++;
        return c;
    }

    public String consumeData() {
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '&' || c == '<') {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeDigitSequence() throws IOException {
        int i;
        char c;
        bufferUp();
        int i2 = this.bufPos;
        while (true) {
            i = this.bufPos;
            if (i >= this.bufLength || (c = this.charBuf[i]) < '0' || c > '9') {
                break;
            }
            this.bufPos = i + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i2, i - i2);
    }

    public String consumeHexSequence() throws IOException {
        int i;
        char c;
        bufferUp();
        int i2 = this.bufPos;
        while (true) {
            i = this.bufPos;
            if (i >= this.bufLength || (((c = this.charBuf[i]) < '0' || c > '9') && ((c < 'A' || c > 'F') && (c < 'a' || c > 'f')))) {
                break;
            }
            this.bufPos = i + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i2, i - i2);
    }

    public String consumeLetterSequence() throws IOException {
        char c;
        bufferUp();
        int i = this.bufPos;
        while (true) {
            int i2 = this.bufPos;
            if (i2 >= this.bufLength || (((c = this.charBuf[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.bufPos++;
        }
        return cacheString(this.charBuf, this.stringCache, i, this.bufPos - i);
    }

    public String consumeLetterThenDigitSequence() throws IOException {
        char c;
        bufferUp();
        int i = this.bufPos;
        while (true) {
            int i2 = this.bufPos;
            if (i2 >= this.bufLength || (((c = this.charBuf[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.bufPos++;
        }
        while (!isEmptyNoBufferUp()) {
            char[] cArr = this.charBuf;
            int i3 = this.bufPos;
            char c2 = cArr[i3];
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.bufPos = i3 + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i, this.bufPos - i);
    }

    public String consumeRawData() {
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '<') {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeTagName() throws IOException {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == ' ' || c == '/' || c == '<' || c == '>' || c == '\t' || c == '\n' || c == '\f' || c == '\r') {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeTo(char c) throws IOException {
        int iNextIndexOf = nextIndexOf(c);
        if (iNextIndexOf == -1) {
            return consumeToEnd();
        }
        String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
        this.bufPos += iNextIndexOf;
        return strCacheString;
    }

    public String consumeToAny(char... cArr) throws IOException {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c : cArr) {
                if (cArr2[i3] == c) {
                    break loop0;
                }
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeToAnySorted(char... cArr) throws IOException {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public String consumeToEnd() throws IOException {
        bufferUp();
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i = this.bufPos;
        String strCacheString = cacheString(cArr, strArr, i, this.bufLength - i);
        this.bufPos = this.bufLength;
        return strCacheString;
    }

    public boolean containsIgnoreCase(String str) {
        Locale locale = Locale.ENGLISH;
        return nextIndexOf(str.toLowerCase(locale)) > -1 || nextIndexOf(str.toUpperCase(locale)) > -1;
    }

    public char current() throws IOException {
        bufferUp();
        return isEmptyNoBufferUp() ? EOF : this.charBuf[this.bufPos];
    }

    public boolean isEmpty() throws IOException {
        bufferUp();
        return this.bufPos >= this.bufLength;
    }

    public void mark() throws IOException {
        if (this.bufLength - this.bufPos < 1024) {
            this.bufSplitPoint = 0;
        }
        bufferUp();
        this.bufMark = this.bufPos;
    }

    public boolean matchConsume(String str) throws IOException {
        bufferUp();
        if (!matches(str)) {
            return false;
        }
        this.bufPos = str.length() + this.bufPos;
        return true;
    }

    public boolean matchConsumeIgnoreCase(String str) {
        if (!matchesIgnoreCase(str)) {
            return false;
        }
        this.bufPos = str.length() + this.bufPos;
        return true;
    }

    public boolean matches(char c) {
        return !isEmpty() && this.charBuf[this.bufPos] == c;
    }

    public boolean matchesAny(char... cArr) throws IOException {
        if (isEmpty()) {
            return false;
        }
        bufferUp();
        char c = this.charBuf[this.bufPos];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesAnySorted(char[] cArr) throws IOException {
        bufferUp();
        return !isEmpty() && Arrays.binarySearch(cArr, this.charBuf[this.bufPos]) >= 0;
    }

    public boolean matchesDigit() {
        char c;
        return !isEmpty() && (c = this.charBuf[this.bufPos]) >= '0' && c <= '9';
    }

    public boolean matchesIgnoreCase(String str) throws IOException {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.charBuf[this.bufPos + i])) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c = this.charBuf[this.bufPos];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || Character.isLetter(c);
    }

    public int nextIndexOf(char c) throws IOException {
        bufferUp();
        for (int i = this.bufPos; i < this.bufLength; i++) {
            if (c == this.charBuf[i]) {
                return i - this.bufPos;
            }
        }
        return -1;
    }

    public int pos() {
        return this.readerPos + this.bufPos;
    }

    public void rewindToMark() {
        int i = this.bufMark;
        if (i == -1) {
            throw new UncheckedIOException(new IOException("Mark invalid"));
        }
        this.bufPos = i;
        unmark();
    }

    public String toString() {
        if (this.bufLength - this.bufPos < 0) {
            return "";
        }
        char[] cArr = this.charBuf;
        int i = this.bufPos;
        return new String(cArr, i, this.bufLength - i);
    }

    public void unconsume() {
        int i = this.bufPos;
        if (i < 1) {
            throw new UncheckedIOException(new IOException("No buffer left to unconsume"));
        }
        this.bufPos = i - 1;
    }

    public void unmark() {
        this.bufMark = -1;
    }

    public boolean matches(String str) throws IOException {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.charBuf[this.bufPos + i]) {
                return false;
            }
        }
        return true;
    }

    public boolean rangeEquals(int i, int i2, String str) {
        return rangeEquals(this.charBuf, i, i2, str);
    }

    public String consumeTo(String str) throws IOException {
        int iNextIndexOf = nextIndexOf(str);
        if (iNextIndexOf != -1) {
            String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
            this.bufPos += iNextIndexOf;
            return strCacheString;
        }
        if (this.bufLength - this.bufPos < str.length()) {
            return consumeToEnd();
        }
        int length = (this.bufLength - str.length()) + 1;
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i = this.bufPos;
        String strCacheString2 = cacheString(cArr, strArr, i, length - i);
        this.bufPos = length;
        return strCacheString2;
    }

    public int nextIndexOf(CharSequence charSequence) throws IOException {
        bufferUp();
        char cCharAt = charSequence.charAt(0);
        int i = this.bufPos;
        while (i < this.bufLength) {
            if (cCharAt != this.charBuf[i]) {
                do {
                    i++;
                    if (i >= this.bufLength) {
                        break;
                    }
                } while (cCharAt != this.charBuf[i]);
            }
            int i2 = i + 1;
            int length = (charSequence.length() + i2) - 1;
            int i3 = this.bufLength;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && charSequence.charAt(i5) == this.charBuf[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.bufPos;
                }
            }
            i = i2;
        }
        return -1;
    }

    public CharacterReader(Reader reader) {
        this(reader, 32768);
    }

    public CharacterReader(String str) {
        this(new StringReader(str), str.length());
    }
}
