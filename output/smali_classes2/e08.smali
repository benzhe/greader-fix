.class public final synthetic Le08;
.super Ljava/lang/Object;
.source "BiStringLookup.java"


# direct methods
.method public static $default$lookup(Lorg/apache/commons/text/lookup/BiStringLookup;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/text/lookup/BiStringLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TU;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lorg/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
