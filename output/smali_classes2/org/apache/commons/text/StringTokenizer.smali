.class public Lorg/apache/commons/text/StringTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StringTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StringTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

.field private quoteMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/apache/commons/text/matcher/StringMatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/text/StringTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/text/StringTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StringTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StringTokenizer;

    .line 2
    sget-object v1, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->commaMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    .line 3
    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->doubleQuoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setIgnoredMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->trimMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setTrimmerMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/text/StringTokenizer;

    .line 7
    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/text/StringTokenizer;

    .line 8
    new-instance v0, Lorg/apache/commons/text/StringTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/text/StringTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StringTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StringTokenizer;

    .line 9
    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->tabMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    .line 10
    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->doubleQuoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    .line 11
    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/text/StringTokenizer;->setIgnoredMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    .line 12
    invoke-virtual {v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->trimMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/StringTokenizer;->setTrimmerMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    .line 13
    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/text/StringTokenizer;

    .line 14
    invoke-virtual {v0, v2}, Lorg/apache/commons/text/StringTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->splitMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->splitMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 11
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 12
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterChar(C)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;C)V

    .line 25
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StringTokenizer;->setQuoteChar(C)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/text/matcher/StringMatcher;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StringTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/text/matcher/StringMatcher;)V

    .line 27
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->splitMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 30
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 31
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 32
    invoke-virtual {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    :goto_0
    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StringTokenizer;-><init>([C)V

    .line 38
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterChar(C)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StringTokenizer;-><init>([CC)V

    .line 44
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StringTokenizer;->setQuoteChar(C)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StringTokenizer;-><init>([C)V

    .line 40
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/text/matcher/StringMatcher;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/text/StringTokenizer;-><init>([C)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/StringTokenizer;-><init>([CLorg/apache/commons/text/matcher/StringMatcher;)V

    .line 46
    invoke-virtual {p0, p3}, Lorg/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 4
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkTokenized()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/text/StringTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/text/StringTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private static getCSVClone()Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StringTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/text/StringTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/text/StringTokenizer;->getCSVClone()Lorg/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/commons/text/StringTokenizer;->getCSVClone()Lorg/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StringTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 4
    invoke-static {}, Lorg/apache/commons/text/StringTokenizer;->getCSVClone()Lorg/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StringTokenizer;->reset([C)Lorg/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method private static getTSVClone()Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/text/StringTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/text/StringTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/text/StringTokenizer;->getTSVClone()Lorg/apache/commons/text/StringTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/commons/text/StringTokenizer;->getTSVClone()Lorg/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StringTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 4
    invoke-static {}, Lorg/apache/commons/text/StringTokenizer;->getTSVClone()Lorg/apache/commons/text/StringTokenizer;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/text/StringTokenizer;->reset([C)Lorg/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    add-int v2, p2, v1

    if-ge v2, p3, :cond_1

    .line 1
    aget-char v2, p1, v2

    add-int v3, p4, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private readNextToken([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/text/TextStringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->getIgnoredMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->getTrimmerMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->getDelimiterMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    if-gtz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->getQuoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, ""

    if-lt p2, p3, :cond_2

    .line 6
    invoke-direct {p0, p5, v0}, Lorg/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->getDelimiterMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v1

    invoke-interface {v1, p1, p2, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_3

    .line 8
    invoke-direct {p0, p5, v0}, Lorg/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int/2addr p2, v1

    return p2

    .line 9
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->getQuoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v7

    if-lez v7, :cond_4

    add-int v2, p2, v7

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    .line 10
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/text/StringTokenizer;->readWithQuotes([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/List;II)I

    move-result p1

    return p1

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/text/StringTokenizer;->readWithQuotes([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/List;II)I

    move-result p1

    return p1
.end method

.method private readWithQuotes([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/List;II)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/text/TextStringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    .line 1
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/text/TextStringBuilder;->clear()Lorg/apache/commons/text/TextStringBuilder;

    if-lez v12, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    move v5, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v5, v9, :cond_8

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p3

    move v13, v4

    move/from16 v4, p6

    move v14, v5

    move/from16 v5, p7

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StringTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int v16, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StringTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v10, v7, v14, v12}, Lorg/apache/commons/text/TextStringBuilder;->append([CII)Lorg/apache/commons/text/TextStringBuilder;

    mul-int/lit8 v0, v12, 0x2

    add-int v5, v0, v14

    .line 5
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v13

    move/from16 v5, v16

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v14, 0x1

    .line 6
    aget-char v0, v7, v14

    invoke-virtual {v10, v0}, Lorg/apache/commons/text/TextStringBuilder;->append(C)Lorg/apache/commons/text/TextStringBuilder;

    .line 7
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result v4

    goto :goto_1

    :cond_3
    move v13, v4

    move v14, v5

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringTokenizer;->getDelimiterMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, v7, v14, v8, v9}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v10, v1, v13}, Lorg/apache/commons/text/TextStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v11, v1}, Lorg/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int v5, v14, v0

    return v5

    :cond_4
    if-lez v12, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    .line 10
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StringTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int v5, v14, v12

    move v4, v13

    const/4 v15, 0x1

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringTokenizer;->getIgnoredMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, v7, v14, v8, v9}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_6

    :goto_2
    add-int v5, v14, v0

    move v4, v13

    goto/16 :goto_1

    .line 12
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/text/StringTokenizer;->getTrimmerMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-interface {v0, v7, v14, v8, v9}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_7

    .line 13
    invoke-virtual {v10, v7, v14, v0}, Lorg/apache/commons/text/TextStringBuilder;->append([CII)Lorg/apache/commons/text/TextStringBuilder;

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v14, 0x1

    .line 14
    aget-char v0, v7, v14

    invoke-virtual {v10, v0}, Lorg/apache/commons/text/TextStringBuilder;->append(C)Lorg/apache/commons/text/TextStringBuilder;

    .line 15
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/text/TextStringBuilder;->size()I

    move-result v4

    goto/16 :goto_1

    :cond_8
    move v13, v4

    const/4 v0, 0x0

    .line 16
    invoke-virtual {v10, v0, v13}, Lorg/apache/commons/text/TextStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->cloneReset()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cloneReset()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/text/StringTokenizer;

    .line 2
    iget-object v1, v0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/text/StringTokenizer;->reset()Lorg/apache/commons/text/StringTokenizer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 2
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 2
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokenPos:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->reset()Lorg/apache/commons/text/StringTokenizer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    :goto_0
    return-object p0
.end method

.method public reset([C)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->reset()Lorg/apache/commons/text/StringTokenizer;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->chars:[C

    :goto_0
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "set() is unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->delimMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    :goto_0
    return-object p0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringTokenizer;->setDelimiterMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/text/StringTokenizer;->emptyAsNull:Z

    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/text/StringTokenizer;->ignoreEmptyTokens:Z

    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringTokenizer;->setIgnoredMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->ignoredMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/text/StringTokenizer;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StringTokenizer;->setQuoteMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setQuoteMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->quoteMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/StringTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/text/StringTokenizer;->trimmerMatcher:Lorg/apache/commons/text/matcher/StringMatcher;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/text/StringTokenizer;->checkTokenized()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "StringTokenizer[not tokenized yet]"

    return-object v0

    :cond_0
    const-string v0, "StringTokenizer"

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenize([CII)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v6, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v6}, Lorg/apache/commons/text/TextStringBuilder;-><init>()V

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :cond_1
    :goto_0
    if-ltz v2, :cond_2

    if-ge v2, p3, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, v7

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StringTokenizer;->readNextToken([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/List;)I

    move-result v2

    if-lt v2, p3, :cond_1

    const-string p2, ""

    .line 4
    invoke-direct {p0, v7, p2}, Lorg/apache/commons/text/StringTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v7

    .line 5
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
