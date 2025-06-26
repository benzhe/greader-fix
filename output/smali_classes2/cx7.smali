.class public final synthetic Lcx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx7;->a:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    iput-object p2, p0, Lcx7;->b:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lhz7;->$default$and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1

    invoke-static {p0}, Lhz7;->$default$negate(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lhz7;->$default$or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(D)Z
    .locals 2

    iget-object v0, p0, Lcx7;->a:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    iget-object v1, p0, Lcx7;->b:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    .line 1
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->test(D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
