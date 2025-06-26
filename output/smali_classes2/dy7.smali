.class public final synthetic Ldy7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongPredicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableLongPredicate;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableLongPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy7;->a:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    iput-object p2, p0, Ldy7;->b:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .locals 0

    invoke-static {p0, p1}, Loz7;->$default$and(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .locals 1

    invoke-static {p0}, Loz7;->$default$negate(Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .locals 0

    invoke-static {p0, p1}, Loz7;->$default$or(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(J)Z
    .locals 2

    iget-object v0, p0, Ldy7;->a:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    iget-object v1, p0, Ldy7;->b:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    .line 1
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->test(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
