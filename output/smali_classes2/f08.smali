.class public final synthetic Lf08;
.super Ljava/lang/Object;
.source "StringMatcher.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/text/matcher/StringMatcher;Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 3
    .param p0, "_this"    # Lorg/apache/commons/text/matcher/StringMatcher;

    .line 1
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/text/matcher/StringMatcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/text/matcher/StringMatcherFactory;->andMatcher([Lorg/apache/commons/text/matcher/StringMatcher;)Lorg/apache/commons/text/matcher/StringMatcher;

    move-result-object p1

    return-object p1
.end method

.method public static $default$isMatch(Lorg/apache/commons/text/matcher/StringMatcher;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "_this"    # Lorg/apache/commons/text/matcher/StringMatcher;

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1, v0}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch(Ljava/lang/CharSequence;III)I

    move-result p1

    return p1
.end method

.method public static $default$isMatch(Lorg/apache/commons/text/matcher/StringMatcher;Ljava/lang/CharSequence;III)I
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/text/matcher/StringMatcher;

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object p1

    invoke-interface {p0, p1, p2, p4, p4}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result p1

    return p1
.end method

.method public static $default$isMatch(Lorg/apache/commons/text/matcher/StringMatcher;[CI)I
    .locals 2
    .param p0, "_this"    # Lorg/apache/commons/text/matcher/StringMatcher;

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1, v0}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result p1

    return p1
.end method

.method public static $default$size(Lorg/apache/commons/text/matcher/StringMatcher;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
