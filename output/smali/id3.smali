.class public abstract Lid3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lxb3;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lgl1$b;

.field public i:Ljava/lang/reflect/Method;

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lid3;->e:Lxb3;

    .line 4
    iput-object p2, p0, Lid3;->f:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lid3;->g:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lid3;->h:Lgl1$b;

    .line 7
    iput p5, p0, Lid3;->j:I

    .line 8
    iput p6, p0, Lid3;->k:I

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public b()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    iget-object v3, p0, Lid3;->e:Lxb3;

    iget-object v4, p0, Lid3;->f:Ljava/lang/String;

    iget-object v5, p0, Lid3;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lxb3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lid3;->i:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lid3;->a()V

    .line 4
    iget-object v3, p0, Lid3;->e:Lxb3;

    .line 5
    iget-object v4, v3, Lxb3;->l:Lpr2;

    if-eqz v4, :cond_1

    .line 6
    iget v6, p0, Lid3;->j:I

    const/high16 v3, -0x80000000

    if-eq v6, v3, :cond_1

    .line 7
    iget v5, p0, Lid3;->k:I

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 9
    invoke-virtual/range {v4 .. v10}, Lpr2;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lid3;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
