.class public Lpr2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroid/os/ConditionVariable;

.field public static volatile d:Lip3;

.field public static volatile e:Ljava/util/Random;


# instance fields
.field public a:Lxb3;

.field public volatile b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lpr2;->c:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lpr2;->d:Lip3;

    .line 3
    sput-object v0, Lpr2;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lxb3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpr2;->a:Lxb3;

    .line 3
    iget-object p1, p1, Lxb3;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Ltq2;

    invoke-direct {v0, p0}, Ltq2;-><init>(Lpr2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()Ljava/util/Random;
    .locals 2

    .line 1
    sget-object v0, Lpr2;->e:Ljava/util/Random;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lpr2;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lpr2;->e:Ljava/util/Random;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lpr2;->e:Ljava/util/Random;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lpr2;->e:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public final a(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lpr2;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2
    iget-object v0, p0, Lpr2;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lpr2;->d:Lip3;

    if-eqz v0, :cond_8

    .line 3
    invoke-static {}, Luc1;->F()Luc1$b;

    move-result-object v0

    iget-object v1, p0, Lpr2;->a:Lxb3;

    .line 4
    iget-object v1, v1, Lxb3;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-boolean v2, v0, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 8
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 9
    :cond_0
    iget-object v2, v0, Ls63$b;->f:Ls63;

    check-cast v2, Luc1;

    invoke-static {v2, v1}, Luc1;->z(Luc1;Ljava/lang/String;)V

    .line 10
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 12
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 13
    :cond_1
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Luc1;

    invoke-static {v1, p3, p4}, Luc1;->x(Luc1;J)V

    if-eqz p5, :cond_3

    .line 14
    iget-boolean p3, v0, Ls63$b;->g:Z

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 16
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 17
    :cond_2
    iget-object p3, v0, Ls63$b;->f:Ls63;

    check-cast p3, Luc1;

    invoke-static {p3, p5}, Luc1;->D(Luc1;Ljava/lang/String;)V

    :cond_3
    if-eqz p6, :cond_6

    .line 18
    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 19
    new-instance p4, Ljava/io/PrintWriter;

    invoke-direct {p4, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    sget-object p5, Lt43;->a:Ls43;

    invoke-virtual {p5, p6, p4}, Ls43;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 21
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    .line 22
    iget-boolean p4, v0, Ls63$b;->g:Z

    if-eqz p4, :cond_4

    .line 23
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 24
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 25
    :cond_4
    iget-object p4, v0, Ls63$b;->f:Ls63;

    check-cast p4, Luc1;

    invoke-static {p4, p3}, Luc1;->A(Luc1;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 27
    iget-boolean p4, v0, Ls63$b;->g:Z

    if-eqz p4, :cond_5

    .line 28
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 29
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 30
    :cond_5
    iget-object p4, v0, Ls63$b;->f:Ls63;

    check-cast p4, Luc1;

    invoke-static {p4, p3}, Luc1;->B(Luc1;Ljava/lang/String;)V

    .line 31
    :cond_6
    sget-object p3, Lpr2;->d:Lip3;

    .line 32
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p4

    check-cast p4, Ls63;

    check-cast p4, Luc1;

    invoke-virtual {p4}, Lb53;->b()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lip3;->a([B)Lqq3;

    move-result-object p3

    .line 33
    iput p1, p3, Lqq3;->c:I

    const/4 p1, -0x1

    if-eq p2, p1, :cond_7

    .line 34
    iput p2, p3, Lqq3;->b:I

    .line 35
    :cond_7
    invoke-virtual {p3}, Lqq3;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    return-void
.end method
