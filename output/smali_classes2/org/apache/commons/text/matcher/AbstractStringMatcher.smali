.class public abstract Lorg/apache/commons/text/matcher/AbstractStringMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/matcher/StringMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;,
        Lorg/apache/commons/text/matcher/AbstractStringMatcher$NoneMatcher;,
        Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;,
        Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;,
        Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;,
        Lorg/apache/commons/text/matcher/AbstractStringMatcher$AndStringMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    invoke-static {p0, p1}, Lf08;->$default$andThen(Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    return-object p1
.end method

.method public synthetic isMatch(Ljava/lang/CharSequence;I)I
    .locals 0

    invoke-static {p0, p1, p2}, Lf08;->$default$isMatch(Lorg/apache/commons/text/matcher/StringMatcher;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public synthetic isMatch(Ljava/lang/CharSequence;III)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lf08;->$default$isMatch(Lorg/apache/commons/text/matcher/StringMatcher;Ljava/lang/CharSequence;III)I

    move-result p1

    return p1
.end method

.method public synthetic isMatch([CI)I
    .locals 0

    invoke-static {p0, p1, p2}, Lf08;->$default$isMatch(Lorg/apache/commons/text/matcher/StringMatcher;[CI)I

    move-result p1

    return p1
.end method

.method public synthetic size()I
    .locals 1

    invoke-static {p0}, Lf08;->$default$size(Lorg/apache/commons/text/matcher/StringMatcher;)I

    move-result v0

    return v0
.end method
