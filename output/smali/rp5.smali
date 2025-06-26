.class public final synthetic Lrp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# instance fields
.field public final a:Lsp5;

.field public final b:I


# direct methods
.method public constructor <init>(Lsp5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrp5;->a:Lsp5;

    iput p2, p0, Lrp5;->b:I

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lrp5;->a:Lsp5;

    iget v1, p0, Lrp5;->b:I

    .line 1
    monitor-enter v0

    if-eqz v1, :cond_0

    :try_start_0
    const-string p1, "FirebaseAuthCredentialsProvider"

    const-string v1, "getToken aborted due to token change"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    sget-object v3, Lqx5$a;->e:Lqx5$a;

    invoke-static {v3, p1, v1, v2}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lsp5;->a()Le45;

    move-result-object p1

    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Le45;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnf5;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    monitor-exit v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Le45;->k()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lc50;->W(Ljava/lang/Exception;)Le45;

    move-result-object p1

    monitor-exit v0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
