.class public final synthetic Lzv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableLongConsumer;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzv7;->a:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iput-wide p2, p0, Lzv7;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzv7;->a:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iget-wide v1, p0, Lzv7;->b:J

    .line 1
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    return-void
.end method
