.class public final Lpq2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Luc1$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Le45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le45<",
            "Lip3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Luc1$c;->f:Luc1$c;

    sput-object v0, Lpq2;->d:Luc1$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Le45;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Le45<",
            "Lip3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpq2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lpq2;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lpq2;->c:Le45;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lpq2;
    .locals 2

    .line 1
    new-instance v0, Lrq2;

    invoke-direct {v0, p0}, Lrq2;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1, v0}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object v0

    .line 3
    new-instance v1, Lpq2;

    invoke-direct {v1, p0, p1, v0}, Lpq2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Le45;)V

    return-object v1
.end method


# virtual methods
.method public final b(IJLjava/lang/Exception;)Le45;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            ")",
            "Le45<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lpq2;->c(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Le45;

    move-result-object p1

    return-object p1
.end method

.method public final c(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Le45<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Luc1;->F()Luc1$b;

    move-result-object v0

    iget-object v1, p0, Lpq2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-boolean v2, v0, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 4
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 5
    :cond_0
    iget-object v2, v0, Ls63$b;->f:Ls63;

    check-cast v2, Luc1;

    invoke-static {v2, v1}, Luc1;->z(Luc1;Ljava/lang/String;)V

    .line 6
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 8
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 9
    :cond_1
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Luc1;

    invoke-static {v1, p2, p3}, Luc1;->x(Luc1;J)V

    .line 10
    sget-object p2, Lpq2;->d:Luc1$c;

    .line 11
    iget-boolean p3, v0, Ls63$b;->g:Z

    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 13
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 14
    :cond_2
    iget-object p3, v0, Ls63$b;->f:Ls63;

    check-cast p3, Luc1;

    invoke-static {p3, p2}, Luc1;->y(Luc1;Luc1$c;)V

    if-eqz p4, :cond_5

    .line 15
    sget-object p2, Lht2;->a:Ljava/lang/Object;

    .line 16
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 17
    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 18
    sget-object v1, Lt43;->a:Ls43;

    invoke-virtual {v1, p4, p3}, Ls43;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 19
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    iget-boolean p3, v0, Ls63$b;->g:Z

    if-eqz p3, :cond_3

    .line 21
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 22
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 23
    :cond_3
    iget-object p3, v0, Ls63$b;->f:Ls63;

    check-cast p3, Luc1;

    invoke-static {p3, p2}, Luc1;->A(Luc1;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 25
    iget-boolean p3, v0, Ls63$b;->g:Z

    if-eqz p3, :cond_4

    .line 26
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 27
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 28
    :cond_4
    iget-object p3, v0, Ls63$b;->f:Ls63;

    check-cast p3, Luc1;

    invoke-static {p3, p2}, Luc1;->B(Luc1;Ljava/lang/String;)V

    :cond_5
    if-eqz p6, :cond_7

    .line 29
    iget-boolean p2, v0, Ls63$b;->g:Z

    if-eqz p2, :cond_6

    .line 30
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 31
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 32
    :cond_6
    iget-object p2, v0, Ls63$b;->f:Ls63;

    check-cast p2, Luc1;

    invoke-static {p2, p6}, Luc1;->D(Luc1;Ljava/lang/String;)V

    :cond_7
    if-eqz p5, :cond_9

    .line 33
    iget-boolean p2, v0, Ls63$b;->g:Z

    if-eqz p2, :cond_8

    .line 34
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 35
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 36
    :cond_8
    iget-object p2, v0, Ls63$b;->f:Ls63;

    check-cast p2, Luc1;

    invoke-static {p2, p5}, Luc1;->E(Luc1;Ljava/lang/String;)V

    .line 37
    :cond_9
    iget-object p2, p0, Lpq2;->c:Le45;

    iget-object p3, p0, Lpq2;->b:Ljava/util/concurrent/Executor;

    new-instance p4, Lqq2;

    invoke-direct {p4, v0, p1}, Lqq2;-><init>(Luc1$b;I)V

    invoke-virtual {p2, p3, p4}, Le45;->i(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object p1

    return-object p1
.end method

.method public final d(IJLjava/lang/String;)Le45;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le45<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lpq2;->c(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Le45;

    move-result-object p1

    return-object p1
.end method

.method public final e(ILjava/lang/String;)Le45;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Le45<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lpq2;->c(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Le45;

    move-result-object p1

    return-object p1
.end method

.method public final f(IJ)Le45;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Le45<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lpq2;->c(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Le45;

    move-result-object p1

    return-object p1
.end method
