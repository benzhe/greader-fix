.class public final Lvs7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltt7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvs7;->sink(Ltt7;)Ltt7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lvs7;

.field public final synthetic f:Ltt7;


# direct methods
.method public constructor <init>(Lvs7;Ltt7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltt7;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lvs7$c;->e:Lvs7;

    iput-object p2, p0, Lvs7$c;->f:Ltt7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvs7$c;->e:Lvs7;

    .line 2
    invoke-virtual {v0}, Lvs7;->enter()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lvs7$c;->f:Ltt7;

    invoke-interface {v1}, Ltt7;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lvs7;->exit()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lvs7;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lvs7;->exit()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lvs7;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    invoke-virtual {v0}, Lvs7;->exit()Z

    move-result v0

    .line 8
    throw v1
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvs7$c;->e:Lvs7;

    .line 2
    invoke-virtual {v0}, Lvs7;->enter()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lvs7$c;->f:Ltt7;

    invoke-interface {v1}, Ltt7;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lvs7;->exit()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lvs7;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lvs7;->exit()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lvs7;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    invoke-virtual {v0}, Lvs7;->exit()Z

    move-result v0

    .line 8
    throw v1
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lvs7$c;->e:Lvs7;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AsyncTimeout.sink("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvs7$c;->f:Ltt7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lxs7;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Lxs7;->f:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Ln56;->u(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4

    .line 3
    iget-object v2, p1, Lxs7;->e:Lqt7;

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    :goto_1
    const/high16 v3, 0x10000

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 4
    iget v3, v2, Lqt7;->c:I

    iget v4, v2, Lqt7;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    .line 5
    :cond_0
    iget-object v2, v2, Lqt7;->f:Lqt7;

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_2
    iget-object v2, p0, Lvs7$c;->e:Lvs7;

    .line 7
    invoke-virtual {v2}, Lvs7;->enter()V

    .line 8
    :try_start_0
    iget-object v3, p0, Lvs7$c;->f:Ltt7;

    invoke-interface {v3, p1, v0, v1}, Ltt7;->write(Lxs7;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v2}, Lvs7;->exit()Z

    move-result v3

    if-nez v3, :cond_2

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v2, p1}, Lvs7;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    invoke-virtual {v2}, Lvs7;->exit()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, p1}, Lvs7;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_4
    invoke-virtual {v2}, Lvs7;->exit()Z

    move-result p2

    .line 13
    throw p1

    :cond_4
    return-void
.end method
