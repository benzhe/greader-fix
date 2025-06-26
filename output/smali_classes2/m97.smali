.class public Lm97;
.super Lf57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm97$c;,
        Lm97$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf57<",
        "Lm97;",
        ">;"
    }
.end annotation


# static fields
.field public static final M:Lz97;

.field public static final N:J

.field public static final O:Lx87$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx87$c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public D:Ljava/util/concurrent/Executor;

.field public E:Ljava/util/concurrent/ScheduledExecutorService;

.field public F:Ljavax/net/ssl/SSLSocketFactory;

.field public G:Lz97;

.field public H:Lm97$b;

.field public I:J

.field public J:J

.field public K:I

.field public L:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lz97$b;

    sget-object v1, Lz97;->f:Lz97;

    invoke-direct {v0, v1}, Lz97$b;-><init>(Lz97;)V

    const/16 v1, 0x8

    new-array v1, v1, [Ly97;

    sget-object v2, Ly97;->Q0:Ly97;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ly97;->P0:Ly97;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ly97;->U0:Ly97;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ly97;->T0:Ly97;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Ly97;->b0:Ly97;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Ly97;->d0:Ly97;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    sget-object v2, Ly97;->c0:Ly97;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    sget-object v2, Ly97;->e0:Ly97;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 2
    invoke-virtual {v0, v1}, Lz97$b;->b([Ly97;)Lz97$b;

    new-array v1, v4, [Lia7;

    sget-object v2, Lia7;->f:Lia7;

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lz97$b;->d([Lia7;)Lz97$b;

    .line 4
    invoke-virtual {v0, v4}, Lz97$b;->c(Z)Lz97$b;

    .line 5
    invoke-virtual {v0}, Lz97$b;->a()Lz97;

    move-result-object v0

    sput-object v0, Lm97;->M:Lz97;

    .line 6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lm97;->N:J

    .line 7
    new-instance v0, Lm97$a;

    invoke-direct {v0}, Lm97$a;-><init>()V

    sput-object v0, Lm97;->O:Lx87$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lf57;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lm97;->M:Lz97;

    iput-object p1, p0, Lm97;->G:Lz97;

    .line 3
    sget-object p1, Lm97$b;->e:Lm97$b;

    iput-object p1, p0, Lm97;->H:Lm97$b;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lm97;->I:J

    .line 5
    sget-wide v0, Lu67;->j:J

    iput-wide v0, p0, Lm97;->J:J

    const p1, 0xffff

    .line 6
    iput p1, p0, Lm97;->K:I

    const p1, 0x7fffffff

    .line 7
    iput p1, p0, Lm97;->L:I

    return-void
.end method

.method public static forTarget(Ljava/lang/String;)Lm97;
    .locals 1

    .line 1
    new-instance v0, Lm97;

    invoke-direct {v0, p0}, Lm97;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b(JLjava/util/concurrent/TimeUnit;)Lg47;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive time must be positive"

    .line 1
    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lm97;->I:J

    .line 3
    sget-wide v0, Ln77;->l:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    iput-wide p1, p0, Lm97;->I:J

    .line 5
    sget-wide v0, Lm97;->N:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 6
    iput-wide p1, p0, Lm97;->I:J

    :cond_1
    return-object p0
.end method

.method public c()Lg47;
    .locals 1

    .line 1
    sget-object v0, Lm97$b;->f:Lm97$b;

    iput-object v0, p0, Lm97;->H:Lm97$b;

    return-object p0
.end method

.method public final d()Lb67;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-wide v2, v1, Lm97;->I:J

    const/4 v0, 0x1

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 2
    :goto_0
    new-instance v2, Lm97$c;

    iget-object v4, v1, Lm97;->D:Ljava/util/concurrent/Executor;

    iget-object v5, v1, Lm97;->E:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v6, 0x0

    .line 3
    iget-object v3, v1, Lm97;->H:Lm97$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_2

    if-ne v3, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    goto :goto_2

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unknown negotiation type: "

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lm97;->H:Lm97$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    :try_start_0
    iget-object v0, v1, Lm97;->F:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    const-string v0, "Default"

    .line 6
    sget-object v3, Lga7;->d:Lga7;

    .line 7
    iget-object v3, v3, Lga7;->a:Ljava/security/Provider;

    .line 8
    invoke-static {v0, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, v1, Lm97;->F:Ljavax/net/ssl/SSLSocketFactory;

    .line 10
    :cond_3
    iget-object v0, v1, Lm97;->F:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    .line 11
    iget-object v9, v1, Lm97;->G:Lz97;

    .line 12
    iget v10, v1, Lf57;->s:I

    .line 13
    iget-wide v12, v1, Lm97;->I:J

    iget-wide v14, v1, Lm97;->J:J

    iget v0, v1, Lm97;->K:I

    move/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v1, Lm97;->L:I

    move/from16 v18, v0

    iget-object v0, v1, Lf57;->r:Lg97$b;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v21}, Lm97$c;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lz97;IZJJIZILg97$b;ZLm97$a;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 14
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "TLS Provider failure"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lm97;->H:Lm97$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lm97;->H:Lm97$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/16 v0, 0x1bb

    return v0
.end method

.method public final scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lm97;
    .locals 1

    const-string v0, "scheduledExecutorService"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lm97;->E:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lm97;
    .locals 0

    .line 1
    iput-object p1, p0, Lm97;->F:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    sget-object p1, Lm97$b;->e:Lm97$b;

    iput-object p1, p0, Lm97;->H:Lm97$b;

    return-object p0
.end method

.method public final transportExecutor(Ljava/util/concurrent/Executor;)Lm97;
    .locals 0

    .line 1
    iput-object p1, p0, Lm97;->D:Ljava/util/concurrent/Executor;

    return-object p0
.end method
