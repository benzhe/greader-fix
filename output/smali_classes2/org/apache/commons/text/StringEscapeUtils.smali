.class public Lorg/apache/commons/text/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StringEscapeUtils$Builder;,
        Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;
    }
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const-string v0, "\""

    const-string v1, "\\\""

    const-string v2, "\\"

    const-string v3, "\\\\"

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 2
    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    const/4 v6, 0x3

    new-array v7, v6, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    aput-object v8, v7, v4

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:Ljava/util/Map;

    invoke-direct {v8, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const/16 v8, 0x20

    const/16 v11, 0x7f

    .line 4
    invoke-static {v8, v11}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v5, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const-string v5, "\'"

    const-string v7, "\\\'"

    .line 5
    invoke-static {v5, v7, v0, v1}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 6
    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "/"

    const-string v13, "\\/"

    .line 7
    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v14, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-array v6, v6, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v15, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 9
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v15, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v15, v6, v4

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v8, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v8, v6, v10

    const/16 v8, 0x20

    .line 10
    invoke-static {v8, v11}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v6, v11

    invoke-direct {v14, v6}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v14, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 12
    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v8, Lorg/apache/commons/text/translate/AggregateTranslator;

    const/4 v11, 0x3

    new-array v11, v11, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 14
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v12, v6}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v12, v11, v4

    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v4, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v4, v11, v10

    const/16 v4, 0x7e

    const/16 v6, 0x20

    .line 15
    invoke-static {v6, v4}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v11, v6

    invoke-direct {v8, v11}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v8, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const-string v4, "\u0000"

    const-string v6, ""

    const-string v8, "\u0001"

    .line 16
    invoke-static {v4, v6, v8, v6}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "\u0002"

    .line 17
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0003"

    .line 18
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0004"

    .line 19
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0005"

    .line 20
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0006"

    .line 21
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0007"

    .line 22
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0008"

    .line 23
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u000b"

    .line 24
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "\u000c"

    .line 25
    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u000e"

    .line 26
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u000f"

    .line 27
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0010"

    .line 28
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0011"

    .line 29
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0012"

    .line 30
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0013"

    .line 31
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0014"

    .line 32
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0015"

    .line 33
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0016"

    .line 34
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0017"

    .line 35
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0018"

    .line 36
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u0019"

    .line 37
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u001a"

    .line 38
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u001b"

    .line 39
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u001c"

    .line 40
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u001d"

    .line 41
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u001e"

    .line 42
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\u001f"

    .line 43
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "\ufffe"

    .line 44
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "\uffff"

    .line 45
    invoke-virtual {v8, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v13, Lorg/apache/commons/text/translate/AggregateTranslator;

    const/4 v14, 0x6

    new-array v14, v14, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v15, Lorg/apache/commons/text/translate/LookupTranslator;

    move-object/from16 v16, v5

    sget-object v5, Lorg/apache/commons/text/translate/EntityArrays;->BASIC_ESCAPE:Ljava/util/Map;

    invoke-direct {v15, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/16 v17, 0x0

    aput-object v15, v14, v17

    new-instance v15, Lorg/apache/commons/text/translate/LookupTranslator;

    move-object/from16 v17, v7

    sget-object v7, Lorg/apache/commons/text/translate/EntityArrays;->APOS_ESCAPE:Ljava/util/Map;

    invoke-direct {v15, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/16 v18, 0x1

    aput-object v15, v14, v18

    new-instance v15, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 47
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v15, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x2

    aput-object v15, v14, v8

    const/16 v8, 0x84

    const/16 v15, 0x7f

    .line 48
    invoke-static {v15, v8}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v8

    const/4 v15, 0x3

    aput-object v8, v14, v15

    const/16 v8, 0x86

    const/16 v15, 0x9f

    .line 49
    invoke-static {v8, v15}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v8

    const/4 v15, 0x4

    aput-object v8, v14, v15

    new-instance v8, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v8}, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/16 v18, 0x5

    aput-object v8, v14, v18

    invoke-direct {v13, v14}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v13, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const-string v8, "&#11;"

    .line 50
    invoke-static {v4, v6, v9, v8}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v8, "&#12;"

    .line 51
    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v4, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v8, Lorg/apache/commons/text/translate/AggregateTranslator;

    const/16 v9, 0x8

    new-array v9, v9, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v10, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v10, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v10, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v7, 0x1

    aput-object v10, v9, v7

    new-instance v10, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 55
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v10, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x2

    aput-object v10, v9, v4

    const/16 v4, 0x8

    .line 56
    invoke-static {v7, v4}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v9, v7

    const/16 v4, 0xe

    const/16 v7, 0x1f

    .line 57
    invoke-static {v4, v7}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v4

    aput-object v4, v9, v15

    const/16 v4, 0x84

    const/16 v7, 0x7f

    .line 58
    invoke-static {v7, v4}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v9, v7

    const/16 v4, 0x86

    const/16 v7, 0x9f

    .line 59
    invoke-static {v4, v7}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v9, v7

    new-instance v4, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v4}, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/4 v7, 0x7

    aput-object v4, v9, v7

    invoke-direct {v8, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v8, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 60
    new-instance v4, Lorg/apache/commons/text/translate/AggregateTranslator;

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v8, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v10, Lorg/apache/commons/text/translate/EntityArrays;->ISO8859_1_ESCAPE:Ljava/util/Map;

    invoke-direct {v8, v10}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v11, 0x1

    aput-object v8, v7, v11

    invoke-direct {v4, v7}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v4, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 61
    new-instance v4, Lorg/apache/commons/text/translate/AggregateTranslator;

    const/4 v7, 0x3

    new-array v7, v7, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v8, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v8, v7, v9

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v5, v10}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v5, v7, v11

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v8, Lorg/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-direct {v4, v7}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v4, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 62
    new-instance v4, Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;

    invoke-direct {v4}, Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;-><init>()V

    sput-object v4, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const-string v4, "|"

    const-string v5, "\\|"

    const-string v7, "&"

    const-string v8, "\\&"

    .line 63
    invoke-static {v4, v5, v7, v8}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, ";"

    const-string v7, "\\;"

    .line 64
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "<"

    const-string v7, "\\<"

    .line 65
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, ">"

    const-string v7, "\\>"

    .line 66
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "("

    const-string v7, "\\("

    .line 67
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, ")"

    const-string v7, "\\)"

    .line 68
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "$"

    const-string v7, "\\$"

    .line 69
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "`"

    const-string v7, "\\`"

    .line 70
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    .line 73
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, " "

    const-string v9, "\\ "

    .line 74
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "\t"

    const-string v9, "\\\t"

    .line 75
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "\r\n"

    .line 76
    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "\n"

    .line 77
    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "*"

    const-string v9, "\\*"

    .line 78
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "?"

    const-string v9, "\\?"

    .line 79
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "["

    const-string v9, "\\["

    .line 80
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "#"

    const-string v9, "\\#"

    .line 81
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "~"

    const-string v9, "\\~"

    .line 82
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "="

    const-string v9, "\\="

    .line 83
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "%"

    const-string v9, "\\%"

    .line 84
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 86
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    sput-object v8, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 87
    invoke-static {v3, v2, v1, v0}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-array v2, v15, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/apache/commons/text/translate/OctalUnescaper;

    invoke-direct {v3}, Lorg/apache/commons/text/translate/OctalUnescaper;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/commons/text/translate/UnicodeUnescaper;

    invoke-direct {v3}, Lorg/apache/commons/text/translate/UnicodeUnescaper;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x3

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 92
    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 93
    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 94
    new-instance v1, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-array v0, v0, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v3, Lorg/apache/commons/text/translate/EntityArrays;->BASIC_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    aput-object v2, v0, v4

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v5, Lorg/apache/commons/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v6, 0x1

    aput-object v2, v0, v6

    new-instance v2, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    new-array v6, v4, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v6}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v6, 0x2

    aput-object v2, v0, v6

    invoke-direct {v1, v0}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 95
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-array v1, v15, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v2, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v5, Lorg/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    new-array v5, v4, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v5}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 96
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-array v1, v5, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v3, Lorg/apache/commons/text/translate/EntityArrays;->APOS_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    new-array v3, v4, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 97
    new-instance v0, Lorg/apache/commons/text/translate/CsvTranslators$CsvUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/text/translate/CsvTranslators$CsvUnescaper;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 98
    new-instance v0, Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lorg/apache/commons/text/translate/CharSequenceTranslator;)Lorg/apache/commons/text/StringEscapeUtils$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/text/StringEscapeUtils$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/text/StringEscapeUtils$Builder;-><init>(Lorg/apache/commons/text/translate/CharSequenceTranslator;Lorg/apache/commons/text/StringEscapeUtils$1;)V

    return-object v0
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeXSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeXSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
