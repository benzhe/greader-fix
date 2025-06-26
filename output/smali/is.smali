.class public Lis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhs;


# static fields
.field public static volatile e:Ljs;


# instance fields
.field public final a:Ldv;

.field public final b:Ldv;

.field public final c:Lft;

.field public final d:Ltt;


# direct methods
.method public constructor <init>(Ldv;Ldv;Lft;Ltt;Lxt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lis;->a:Ldv;

    .line 3
    iput-object p2, p0, Lis;->b:Ldv;

    .line 4
    iput-object p3, p0, Lis;->c:Lft;

    .line 5
    iput-object p4, p0, Lis;->d:Ltt;

    .line 6
    iget-object p1, p5, Lxt;->a:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p2, Lvt;

    invoke-direct {p2, p5}, Lvt;-><init>(Lxt;)V

    .line 8
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lis;
    .locals 2

    .line 1
    sget-object v0, Lis;->e:Ljs;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lxr;

    .line 3
    iget-object v0, v0, Lxr;->p:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lis;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lis;->e:Ljs;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lis;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lis;->e:Ljs;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Landroid/content/Context;

    .line 6
    new-instance v1, Lxr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lxr;-><init>(Landroid/content/Context;Lxr$a;)V

    .line 7
    sput-object v1, Lis;->e:Ljs;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lyr;)Lzq;
    .locals 4

    .line 1
    new-instance v0, Les;

    .line 2
    instance-of v1, p1, Lyr;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lbr;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lbr;->f:Ljava/util/Set;

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Luq;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Luq;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 9
    :goto_0
    invoke-static {}, Lds;->a()Lds$a;

    move-result-object v2

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cct"

    invoke-virtual {v2, v3}, Lds$a;->b(Ljava/lang/String;)Lds$a;

    .line 11
    check-cast p1, Lbr;

    invoke-virtual {p1}, Lbr;->b()[B

    move-result-object p1

    check-cast v2, Lwr$b;

    .line 12
    iput-object p1, v2, Lwr$b;->b:[B

    .line 13
    invoke-virtual {v2}, Lwr$b;->a()Lds;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Les;-><init>(Ljava/util/Set;Lds;Lhs;)V

    return-object v0
.end method
