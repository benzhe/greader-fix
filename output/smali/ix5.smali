.class public final synthetic Lix5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljx5;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljx5;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix5;->e:Ljx5;

    iput-object p2, p0, Lix5;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lix5;->e:Ljx5;

    iget-object v1, p0, Lix5;->f:Ljava/lang/Runnable;

    .line 1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, v0, Ljx5;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
