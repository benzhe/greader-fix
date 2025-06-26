.class public final Lm97$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb67;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Z

.field public final g:Z

.field public final h:Lg97$b;

.field public final i:Ljavax/net/SocketFactory;

.field public final j:Ljavax/net/ssl/SSLSocketFactory;

.field public final k:Ljavax/net/ssl/HostnameVerifier;

.field public final l:Lz97;

.field public final m:I

.field public final n:Z

.field public final o:Lk57;

.field public final p:J

.field public final q:I

.field public final r:Z

.field public final s:I

.field public final t:Ljava/util/concurrent/ScheduledExecutorService;

.field public final u:Z

.field public v:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lz97;IZJJIZILg97$b;ZLm97$a;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2
    :goto_0
    iput-boolean v5, v0, Lm97$c;->g:Z

    if-eqz v5, :cond_1

    .line 3
    sget-object v5, Lu67;->n:Lx87$c;

    invoke-static {v5}, Lx87;->a(Lx87$c;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    iput-object v5, v0, Lm97$c;->t:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v5, 0x0

    .line 4
    iput-object v5, v0, Lm97$c;->i:Ljavax/net/SocketFactory;

    move-object v6, p4

    .line 5
    iput-object v6, v0, Lm97$c;->j:Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    iput-object v5, v0, Lm97$c;->k:Ljavax/net/ssl/HostnameVerifier;

    move-object v5, p6

    .line 7
    iput-object v5, v0, Lm97$c;->l:Lz97;

    move/from16 v5, p7

    .line 8
    iput v5, v0, Lm97$c;->m:I

    move/from16 v5, p8

    .line 9
    iput-boolean v5, v0, Lm97$c;->n:Z

    .line 10
    new-instance v5, Lk57;

    const-string v6, "keepalive time nanos"

    move-wide/from16 v7, p9

    invoke-direct {v5, v6, v7, v8}, Lk57;-><init>(Ljava/lang/String;J)V

    iput-object v5, v0, Lm97$c;->o:Lk57;

    move-wide/from16 v5, p11

    .line 11
    iput-wide v5, v0, Lm97$c;->p:J

    move/from16 v5, p13

    .line 12
    iput v5, v0, Lm97$c;->q:I

    move/from16 v5, p14

    .line 13
    iput-boolean v5, v0, Lm97$c;->r:Z

    move/from16 v5, p15

    .line 14
    iput v5, v0, Lm97$c;->s:I

    move/from16 v5, p17

    .line 15
    iput-boolean v5, v0, Lm97$c;->u:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 16
    :goto_2
    iput-boolean v3, v0, Lm97$c;->f:Z

    const-string v4, "transportTracerFactory"

    .line 17
    invoke-static {v2, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lm97$c;->h:Lg97$b;

    if-eqz v3, :cond_3

    .line 18
    sget-object v1, Lm97;->O:Lx87$c;

    .line 19
    invoke-static {v1}, Lx87;->a(Lx87$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lm97$c;->e:Ljava/util/concurrent/Executor;

    goto :goto_3

    .line 20
    :cond_3
    iput-object v1, v0, Lm97$c;->e:Ljava/util/concurrent/Executor;

    :goto_3
    return-void
.end method


# virtual methods
.method public Y(Ljava/net/SocketAddress;Lb67$a;Lz27;)Ld67;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lm97$c;->v:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, v0, Lm97$c;->o:Lk57;

    .line 3
    new-instance v3, Lk57$b;

    iget-object v4, v2, Lk57;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v2, v4, v5, v6}, Lk57$b;-><init>(Lk57;JLk57$a;)V

    .line 4
    new-instance v2, Lm97$c$a;

    move-object/from16 v20, v2

    invoke-direct {v2, v0, v3}, Lm97$c$a;-><init>(Lm97$c;Lk57$b;)V

    .line 5
    move-object/from16 v8, p1

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 6
    new-instance v2, Lp97;

    move-object v7, v2

    .line 7
    iget-object v9, v1, Lb67$a;->a:Ljava/lang/String;

    .line 8
    iget-object v10, v1, Lb67$a;->c:Ljava/lang/String;

    .line 9
    iget-object v11, v1, Lb67$a;->b:Lv27;

    .line 10
    iget-object v12, v0, Lm97$c;->e:Ljava/util/concurrent/Executor;

    iget-object v13, v0, Lm97$c;->i:Ljavax/net/SocketFactory;

    iget-object v14, v0, Lm97$c;->j:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v15, v0, Lm97$c;->k:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, v0, Lm97$c;->l:Lz97;

    move-object/from16 v16, v4

    iget v4, v0, Lm97$c;->m:I

    move/from16 v17, v4

    iget v4, v0, Lm97$c;->q:I

    move/from16 v18, v4

    .line 11
    iget-object v1, v1, Lb67$a;->d:Lu37;

    move-object/from16 v19, v1

    .line 12
    iget v1, v0, Lm97$c;->s:I

    move/from16 v21, v1

    iget-object v1, v0, Lm97$c;->h:Lg97$b;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v4, Lg97;

    move-object/from16 v22, v4

    iget-object v1, v1, Lg97$b;->a:Ld97;

    invoke-direct {v4, v1, v6}, Lg97;-><init>(Ld97;Lg97$a;)V

    .line 15
    iget-boolean v1, v0, Lm97$c;->u:Z

    move/from16 v23, v1

    invoke-direct/range {v7 .. v23}, Lp97;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lv27;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lz97;IILu37;Ljava/lang/Runnable;ILg97;Z)V

    .line 16
    iget-boolean v1, v0, Lm97$c;->n:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 17
    iget-wide v3, v3, Lk57$b;->a:J

    .line 18
    iget-wide v5, v0, Lm97$c;->p:J

    iget-boolean v7, v0, Lm97$c;->r:Z

    .line 19
    iput-boolean v1, v2, Lp97;->G:Z

    .line 20
    iput-wide v3, v2, Lp97;->H:J

    .line 21
    iput-wide v5, v2, Lp97;->I:J

    .line 22
    iput-boolean v7, v2, Lp97;->J:Z

    :cond_0
    return-object v2

    .line 23
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The transport factory is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm97$c;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm97$c;->v:Z

    .line 3
    iget-boolean v0, p0, Lm97$c;->g:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lu67;->n:Lx87$c;

    iget-object v1, p0, Lm97$c;->t:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lx87;->b(Lx87$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-boolean v0, p0, Lm97$c;->f:Z

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lm97;->O:Lx87$c;

    .line 7
    iget-object v1, p0, Lm97$c;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lx87;->b(Lx87$c;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public x0()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lm97$c;->t:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
