.class public final synthetic Lmv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/TimedSemaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv7;->e:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmv7;->e:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->endOfPeriod()V

    return-void
.end method
