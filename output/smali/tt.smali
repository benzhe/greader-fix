.class public Ltt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lps;

.field public final c:Lcu;

.field public final d:Lzt;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcv;

.field public final g:Ldv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lps;Lcu;Lzt;Ljava/util/concurrent/Executor;Lcv;Ldv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltt;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ltt;->b:Lps;

    .line 4
    iput-object p3, p0, Ltt;->c:Lcu;

    .line 5
    iput-object p4, p0, Ltt;->d:Lzt;

    .line 6
    iput-object p5, p0, Ltt;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Ltt;->f:Lcv;

    .line 8
    iput-object p7, p0, Ltt;->g:Ldv;

    return-void
.end method


# virtual methods
.method public a(Lds;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Ltt;->b:Lps;

    invoke-virtual {p1}, Lds;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lps;->a(Ljava/lang/String;)Lxs;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ltt;->f:Lcv;

    .line 3
    new-instance v2, Lpt;

    invoke-direct {v2, p0, p1}, Lpt;-><init>(Ltt;Lds;)V

    .line 4
    invoke-interface {v1, v2}, Lcv;->a(Lcv$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .line 5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Uploader"

    const-string v1, "Unknown backend for %s, deleting event batch for it..."

    .line 6
    invoke-static {v0, v1, p1}, Lbi;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lrs;->a()Lrs;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_2

    .line 8
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhu;

    .line 10
    invoke-virtual {v3}, Lhu;->a()Las;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lds;->c()[B

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v3, :cond_3

    .line 12
    new-instance v3, Lls;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lls;-><init>(Ljava/lang/Iterable;[BLls$a;)V

    .line 13
    invoke-interface {v0, v3}, Lxs;->a(Lqs;)Lrs;

    move-result-object v0

    goto :goto_0

    .line 14
    :goto_2
    iget-object v0, p0, Ltt;->f:Lcv;

    .line 15
    new-instance v1, Lqt;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lqt;-><init>(Ltt;Lrs;Ljava/lang/Iterable;Lds;I)V

    .line 16
    invoke-interface {v0, v1}, Lcv;->a(Lcv$a;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing required properties:"

    const-string v0, ""

    invoke-static {p2, v0}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
