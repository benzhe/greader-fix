.class public Ldh5;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljm5;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Lgh5;


# direct methods
.method public constructor <init>(Lgh5;Ljava/lang/String;Ljm5;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldh5;->d:Lgh5;

    iput-object p2, p0, Ldh5;->a:Ljava/lang/String;

    iput-object p3, p0, Ldh5;->b:Ljm5;

    iput-object p4, p0, Ldh5;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object v1, p1

    check-cast v1, Lpm5;

    .line 2
    :try_start_0
    iget-object v0, p0, Ldh5;->d:Lgh5;

    iget-object v2, p0, Ldh5;->a:Ljava/lang/String;

    iget-object v3, p0, Ldh5;->b:Ljm5;

    iget-object v4, p0, Ldh5;->c:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lgh5;->a(Lgh5;Lpm5;Ljava/lang/String;Ljm5;Ljava/util/concurrent/Executor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lah5;->a:Lah5;

    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Lah5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "Error performing auto configuration."

    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    throw p1
.end method
