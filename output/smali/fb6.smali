.class public final synthetic Lfb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# instance fields
.field public final a:Ljb6;

.field public final b:Le45;

.field public final c:Le45;


# direct methods
.method public constructor <init>(Ljb6;Le45;Le45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb6;->a:Ljb6;

    iput-object p2, p0, Lfb6;->b:Le45;

    iput-object p3, p0, Lfb6;->c:Le45;

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lfb6;->a:Ljb6;

    iget-object v0, p0, Lfb6;->b:Le45;

    iget-object v1, p0, Lfb6;->c:Le45;

    .line 1
    invoke-virtual {v0}, Le45;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Le45;->l()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Le45;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb6;

    .line 3
    invoke-virtual {v1}, Le45;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v1}, Le45;->l()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyb6;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, v0, Lyb6;->c:Ljava/util/Date;

    iget-object v1, v1, Lyb6;->c:Ljava/util/Date;

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    goto :goto_3

    .line 8
    :cond_3
    iget-object v1, p1, Ljb6;->d:Lxb6;

    .line 9
    invoke-virtual {v1, v0}, Lxb6;->c(Lyb6;)Le45;

    move-result-object v0

    iget-object v1, p1, Ljb6;->b:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v2, Ldb6;

    invoke-direct {v2, p1}, Ldb6;-><init>(Ljb6;)V

    .line 11
    invoke-virtual {v0, v1, v2}, Le45;->i(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object p1

    goto :goto_3

    .line 12
    :cond_4
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    :goto_3
    return-object p1
.end method
