.class public final Lgc7$a;
.super Lzb7$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Landroid/os/Handler;

.field public final f:Z

.field public volatile g:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzb7$b;-><init>()V

    .line 2
    iput-object p1, p0, Lgc7$a;->e:Landroid/os/Handler;

    .line 3
    iput-boolean p2, p0, Lgc7$a;->f:Z

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;
    .locals 3

    .line 1
    sget-object v0, Lzc7;->e:Lzc7;

    const-string v1, "run == null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "unit == null"

    .line 2
    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lgc7$a;->g:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lgc7$b;

    iget-object v2, p0, Lgc7$a;->e:Landroid/os/Handler;

    invoke-direct {v1, v2, p1}, Lgc7$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 5
    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 6
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-boolean v2, p0, Lgc7$a;->f:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 9
    :cond_1
    iget-object v2, p0, Lgc7$a;->e:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    iget-boolean p1, p0, Lgc7$a;->g:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lgc7$a;->e:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lgc7$a;->g:Z

    .line 2
    iget-object v0, p0, Lgc7$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
