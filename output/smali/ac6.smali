.class public final synthetic Lac6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# instance fields
.field public final a:Ldc6;

.field public final b:Le45;

.field public final c:Le45;

.field public final d:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ldc6;Le45;Le45;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac6;->a:Ldc6;

    iput-object p2, p0, Lac6;->b:Le45;

    iput-object p3, p0, Lac6;->c:Le45;

    iput-object p4, p0, Lac6;->d:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p0, Lac6;->a:Ldc6;

    iget-object v0, p0, Lac6;->b:Le45;

    iget-object v1, p0, Lac6;->c:Le45;

    iget-object v2, p0, Lac6;->d:Ljava/util/Date;

    .line 1
    sget-object v3, Ldc6;->j:[I

    .line 2
    invoke-virtual {v0}, Le45;->o()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance p1, Lkb6;

    .line 4
    invoke-virtual {v0}, Le45;->k()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "Firebase Installations failed to get installation ID for fetch."

    invoke-direct {p1, v1, v0}, Lkb6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p1}, Lc50;->W(Ljava/lang/Exception;)Le45;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Le45;->o()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    new-instance p1, Lkb6;

    .line 8
    invoke-virtual {v1}, Le45;->k()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "Firebase Installations failed to get installation auth token for fetch."

    invoke-direct {p1, v1, v0}, Lkb6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lc50;->W(Ljava/lang/Exception;)Le45;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Le45;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Le45;->l()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea6;

    invoke-virtual {v1}, Lea6;->a()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Ldc6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ldc6$a;

    move-result-object v0

    .line 14
    iget v1, v0, Ldc6$a;->a:I

    if-eqz v1, :cond_2

    .line 15
    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p1, Ldc6;->e:Lxb6;

    .line 17
    iget-object v2, v0, Ldc6$a;->b:Lyb6;

    .line 18
    invoke-virtual {v1, v2}, Lxb6;->c(Lyb6;)Le45;

    move-result-object v1

    iget-object p1, p1, Ldc6;->c:Ljava/util/concurrent/Executor;

    .line 19
    new-instance v2, Lcc6;

    invoke-direct {v2, v0}, Lcc6;-><init>(Ldc6$a;)V

    .line 20
    invoke-virtual {v1, p1, v2}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    move-result-object p1
    :try_end_0
    .catch Llb6; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lc50;->W(Ljava/lang/Exception;)Le45;

    move-result-object p1

    :goto_0
    return-object p1
.end method
