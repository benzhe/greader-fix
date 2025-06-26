.class public Lni5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld45<",
        "Lpm5;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Loi5;


# direct methods
.method public constructor <init>(Loi5;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lni5;->b:Loi5;

    iput-object p2, p0, Lni5;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lpm5;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lah5;->a:Lah5;

    const-string v0, "Received null app settings, cannot send reports at crash time."

    .line 3
    invoke-virtual {p1, v0}, Lah5;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lni5;->b:Loi5;

    iget-object v0, v0, Loi5;->i:Lii5;

    .line 6
    iget-object v1, v0, Lii5;->a:Landroid/content/Context;

    .line 7
    iget-object v2, v0, Lii5;->j:Lul5$b;

    check-cast v2, Lsi5;

    invoke-virtual {v2, p1}, Lsi5;->a(Lpm5;)Lul5;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lii5;->q()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_1

    aget-object v8, v3, v6

    .line 9
    iget-object v9, p1, Lpm5;->e:Ljava/lang/String;

    invoke-static {v9, v8}, Lii5;->c(Ljava/lang/String;Ljava/io/File;)V

    .line 10
    new-instance v9, Lyl5;

    sget-object v10, Lii5;->C:Ljava/util/Map;

    invoke-direct {v9, v8, v10}, Lyl5;-><init>(Ljava/io/File;Ljava/util/Map;)V

    .line 11
    iget-object v8, v0, Lii5;->e:Lwh5;

    new-instance v10, Lii5$m;

    invoke-direct {v10, v1, v9, v2, v7}, Lii5$m;-><init>(Landroid/content/Context;Lxl5;Lul5;Z)V

    .line 12
    new-instance v7, Lxh5;

    invoke-direct {v7, v8, v10}, Lxh5;-><init>(Lwh5;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v7}, Lwh5;->b(Ljava/util/concurrent/Callable;)Le45;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Le45;

    .line 13
    iget-object v1, p0, Lni5;->b:Loi5;

    iget-object v1, v1, Loi5;->i:Lii5;

    .line 14
    invoke-static {v1}, Lii5;->b(Lii5;)Le45;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lni5;->b:Loi5;

    iget-object v1, v1, Loi5;->i:Lii5;

    .line 15
    iget-object v1, v1, Lii5;->s:Lmj5;

    .line 16
    iget-object v2, p0, Lni5;->a:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {p1}, Lcj5;->i(Lpm5;)Lcj5;

    move-result-object p1

    .line 18
    invoke-virtual {v1, v2, p1}, Lmj5;->a(Ljava/util/concurrent/Executor;Lcj5;)Le45;

    move-result-object p1

    aput-object p1, v0, v7

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lc50;->M0(Ljava/util/Collection;)Le45;

    move-result-object p1

    :goto_1
    return-object p1
.end method
