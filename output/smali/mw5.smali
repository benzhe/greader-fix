.class public Lmw5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmw5$a;
    }
.end annotation


# instance fields
.field public a:Lwq5;

.field public b:I

.field public c:Lex5$b;

.field public d:Z

.field public final e:Lex5;

.field public final f:Lmw5$a;


# direct methods
.method public constructor <init>(Lex5;Lmw5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmw5;->e:Lex5;

    .line 3
    iput-object p2, p0, Lmw5;->f:Lmw5$a;

    .line 4
    sget-object p1, Lwq5;->e:Lwq5;

    iput-object p1, p0, Lmw5;->a:Lwq5;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lmw5;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Could not reach Cloud Firestore backend. %s\nThis typically indicates that your device does not have a healthy Internet connection at the moment. The client will operate in offline mode until it is able to successfully connect to the backend."

    .line 1
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v1, p0, Lmw5;->d:Z

    const-string v3, "%s"

    const-string v4, "OnlineStateTracker"

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 3
    sget-object p1, Lqx5$a;->f:Lqx5$a;

    invoke-static {p1, v4, v3, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-boolean v2, p0, Lmw5;->d:Z

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 5
    sget-object p1, Lqx5$a;->e:Lqx5$a;

    invoke-static {p1, v4, v3, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b(Lwq5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmw5;->a:Lwq5;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lmw5;->a:Lwq5;

    .line 3
    iget-object v0, p0, Lmw5;->f:Lmw5$a;

    check-cast v0, Lpw5;

    .line 4
    iget-object v0, v0, Lpw5;->a:Lsw5$c;

    invoke-interface {v0, p1}, Lsw5$c;->e(Lwq5;)V

    :cond_0
    return-void
.end method

.method public c(Lwq5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmw5;->c:Lex5$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lex5$b;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmw5;->c:Lex5$b;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmw5;->b:I

    .line 5
    sget-object v1, Lwq5;->f:Lwq5;

    if-ne p1, v1, :cond_1

    .line 6
    iput-boolean v0, p0, Lmw5;->d:Z

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lmw5;->b(Lwq5;)V

    return-void
.end method
