.class public final Lorg/apache/commons/text/lookup/BiFunctionStringLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/lookup/BiStringLookup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/lookup/BiStringLookup<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final biFunction:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "TP;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "TP;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;->biFunction:Ljava/util/function/BiFunction;

    return-void
.end method

.method public static on(Ljava/util/Map;)Lorg/apache/commons/text/lookup/BiFunctionStringLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lorg/apache/commons/text/lookup/BiFunctionStringLookup<",
            "TU;TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lxz7;

    invoke-direct {v0, p0}, Lxz7;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;->on(Ljava/util/function/BiFunction;)Lorg/apache/commons/text/lookup/BiFunctionStringLookup;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/util/function/BiFunction;)Lorg/apache/commons/text/lookup/BiFunctionStringLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "TU;TT;>;)",
            "Lorg/apache/commons/text/lookup/BiFunctionStringLookup<",
            "TU;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;-><init>(Ljava/util/function/BiFunction;)V

    return-object v0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;->lookup(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TP;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;->biFunction:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-static {p1, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [function="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;->biFunction:Ljava/util/function/BiFunction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
