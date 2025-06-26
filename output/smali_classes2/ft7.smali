.class public Lft7;
.super Lwt7;
.source "SourceFile"


# instance fields
.field public a:Lwt7;


# direct methods
.method public constructor <init>(Lwt7;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lwt7;-><init>()V

    iput-object p1, p0, Lft7;->a:Lwt7;

    return-void
.end method


# virtual methods
.method public clearDeadline()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0}, Lwt7;->clearDeadline()Lwt7;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0}, Lwt7;->clearTimeout()Lwt7;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0}, Lwt7;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lwt7;
    .locals 1

    .line 2
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0, p1, p2}, Lwt7;->deadlineNanoTime(J)Lwt7;

    move-result-object p1

    return-object p1
.end method

.method public hasDeadline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0}, Lwt7;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0}, Lwt7;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lwt7;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0, p1, p2, p3}, Lwt7;->timeout(JLjava/util/concurrent/TimeUnit;)Lwt7;

    move-result-object p1

    return-object p1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, Lft7;->a:Lwt7;

    invoke-virtual {v0}, Lwt7;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
