.class public final Lk97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk97$a;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/logging/Logger;


# instance fields
.field public final e:Lk97$a;

.field public final f:Lma7;

.field public final g:Lq97;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp97;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lk97;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lk97$a;Lma7;Lq97;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transportExceptionHandler"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lk97$a;

    iput-object p1, p0, Lk97;->e:Lk97$a;

    const-string p1, "frameWriter"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lma7;

    iput-object p2, p0, Lk97;->f:Lma7;

    const-string p1, "frameLogger"

    .line 4
    invoke-static {p3, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lq97;

    iput-object p3, p0, Lk97;->g:Lq97;

    return-void
.end method


# virtual methods
.method public B0(ZZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lna7;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lma7;->B0(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lk97;->e:Lk97$a;

    invoke-interface {p2, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public H0(ILka7;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk97;->g:Lq97;

    sget-object v1, Lq97$a;->f:Lq97$a;

    .line 2
    invoke-static {p3}, Lbt7;->C([B)Lbt7;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, p1, p2, v2}, Lq97;->c(Lq97$a;ILka7;Lbt7;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0, p1, p2, p3}, Lma7;->H0(ILka7;[B)V

    .line 5
    iget-object p1, p0, Lk97;->f:Lma7;

    invoke-interface {p1}, Lma7;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lk97;->e:Lk97$a;

    invoke-interface {p2, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public I0(ILka7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk97;->g:Lq97;

    sget-object v1, Lq97$a;->f:Lq97$a;

    invoke-virtual {v0, v1, p1, p2}, Lq97;->e(Lq97$a;ILka7;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0, p1, p2}, Lma7;->I0(ILka7;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lk97;->e:Lk97$a;

    invoke-interface {p2, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public X(Lra7;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk97;->g:Lq97;

    sget-object v1, Lq97$a;->f:Lq97$a;

    .line 2
    invoke-virtual {v0}, Lq97;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v0, Lq97;->a:Ljava/util/logging/Logger;

    iget-object v0, v0, Lq97;->b:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " SETTINGS: ack=true"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0, p1}, Lma7;->X(Lra7;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lk97;->e:Lk97$a;

    invoke-interface {v0, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lk97;->h:Ljava/util/logging/Logger;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    const-string v3, "Failed closing connection"

    .line 6
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public connectionPreface()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0}, Lma7;->connectionPreface()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lk97;->e:Lk97$a;

    invoke-interface {v1, v0}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public data(ZILxs7;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk97;->g:Lq97;

    sget-object v1, Lq97$a;->f:Lq97$a;

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lq97;->b(Lq97$a;ILxs7;IZ)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0, p1, p2, p3, p4}, Lma7;->data(ZILxs7;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lk97;->e:Lk97$a;

    invoke-interface {p2, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public f0(Lra7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk97;->g:Lq97;

    sget-object v1, Lq97$a;->f:Lq97$a;

    invoke-virtual {v0, v1, p1}, Lq97;->f(Lq97$a;Lra7;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0, p1}, Lma7;->f0(Lra7;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lk97;->e:Lk97$a;

    invoke-interface {v0, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0}, Lma7;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lk97;->e:Lk97$a;

    invoke-interface {v1, v0}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public maxDataLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0}, Lma7;->maxDataLength()I

    move-result v0

    return v0
.end method

.method public ping(ZII)V
    .locals 9

    .line 1
    sget-object v0, Lq97$a;->f:Lq97$a;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz p1, :cond_0

    .line 2
    iget-object v4, p0, Lk97;->g:Lq97;

    int-to-long v5, p2

    shl-long/2addr v5, v3

    int-to-long v7, p3

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    .line 3
    invoke-virtual {v4}, Lq97;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v4, Lq97;->a:Ljava/util/logging/Logger;

    iget-object v4, v4, Lq97;->b:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " PING: ack=true bytes="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v4, p0, Lk97;->g:Lq97;

    int-to-long v5, p2

    shl-long/2addr v5, v3

    int-to-long v7, p3

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    invoke-virtual {v4, v0, v1, v2}, Lq97;->d(Lq97$a;J)V

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0, p1, p2, p3}, Lma7;->ping(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lk97;->e:Lk97$a;

    invoke-interface {p2, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk97;->g:Lq97;

    sget-object v1, Lq97$a;->f:Lq97$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lq97;->g(Lq97$a;IJ)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lk97;->f:Lma7;

    invoke-interface {v0, p1, p2, p3}, Lma7;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lk97;->e:Lk97$a;

    invoke-interface {p2, p1}, Lk97$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
