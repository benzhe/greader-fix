.class public final synthetic Lyw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyw7;->a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iput-object p2, p0, Lyw7;->b:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 2

    iget-object v0, p0, Lyw7;->a:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iget-object v1, p0, Lyw7;->b:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    .line 1
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->accept(D)V

    .line 2
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->accept(D)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lgz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    move-result-object p1

    return-object p1
.end method
