.class public final synthetic Lay7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableLongConsumer;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableLongConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay7;->a:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iput-object p2, p0, Lay7;->b:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    iget-object v0, p0, Lay7;->a:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iget-object v1, p0, Lay7;->b:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    .line 1
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    .line 2
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lnz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;

    move-result-object p1

    return-object p1
.end method
