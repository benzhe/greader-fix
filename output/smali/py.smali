.class public Lpy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lny$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final c:Lny$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final d:Lb00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb00<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Looper;

.field public final f:I

.field public final g:Lqy;

.field public final h:Lzy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lny;Lny$d;Lwy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lny<",
            "TO;>;TO;",
            "Lwy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p3, "StatusExceptionMapper must not be null."

    .line 1
    invoke-static {p4, p3}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 3
    new-instance v0, Lpy$a;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1, p3}, Lpy$a;-><init>(Lwy;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "Null context is not permitted."

    .line 5
    invoke-static {p1, p3}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Api must not be null."

    .line 6
    invoke-static {p2, p3}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 7
    invoke-static {v0, p3}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpy;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lpy;->b:Lny;

    .line 10
    iput-object v1, p0, Lpy;->c:Lny$d;

    .line 11
    iget-object p3, v0, Lpy$a;->b:Landroid/os/Looper;

    iput-object p3, p0, Lpy;->e:Landroid/os/Looper;

    .line 12
    new-instance p3, Lb00;

    invoke-direct {p3, p2, v1}, Lb00;-><init>(Lny;Lny$d;)V

    .line 13
    iput-object p3, p0, Lpy;->d:Lb00;

    .line 14
    new-instance p2, Lpz;

    invoke-direct {p2, p0}, Lpz;-><init>(Lpy;)V

    iput-object p2, p0, Lpy;->g:Lqy;

    .line 15
    invoke-static {p1}, Lzy;->a(Landroid/content/Context;)Lzy;

    move-result-object p1

    iput-object p1, p0, Lpy;->h:Lzy;

    .line 16
    iget-object p2, p1, Lzy;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    .line 17
    iput p2, p0, Lpy;->f:I

    .line 18
    iget-object p1, p1, Lzy;->n:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a()Lj00$a;
    .locals 4

    .line 1
    new-instance v0, Lj00$a;

    invoke-direct {v0}, Lj00$a;-><init>()V

    .line 2
    iget-object v1, p0, Lpy;->c:Lny$d;

    instance-of v2, v1, Lny$d$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lny$d$b;

    .line 4
    invoke-interface {v1}, Lny$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/accounts/Account;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lpy;->c:Lny$d;

    instance-of v2, v1, Lny$d$a;

    if-eqz v2, :cond_2

    .line 7
    check-cast v1, Lny$d$a;

    invoke-interface {v1}, Lny$d$a;->b()Landroid/accounts/Account;

    move-result-object v3

    .line 8
    :cond_2
    :goto_0
    iput-object v3, v0, Lj00$a;->a:Landroid/accounts/Account;

    .line 9
    iget-object v1, p0, Lpy;->c:Lny$d;

    instance-of v2, v1, Lny$d$b;

    if-eqz v2, :cond_3

    .line 10
    check-cast v1, Lny$d$b;

    .line 11
    invoke-interface {v1}, Lny$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->n()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 14
    :goto_1
    iget-object v2, v0, Lj00$a;->b:Lh4;

    if-nez v2, :cond_4

    .line 15
    new-instance v2, Lh4;

    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3}, Lh4;-><init>(I)V

    .line 17
    iput-object v2, v0, Lj00$a;->b:Lh4;

    .line 18
    :cond_4
    iget-object v2, v0, Lj00$a;->b:Lh4;

    invoke-virtual {v2, v1}, Lh4;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v1, p0, Lpy;->a:Landroid/content/Context;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 21
    iput-object v1, v0, Lj00$a;->d:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lpy;->a:Landroid/content/Context;

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 24
    iput-object v1, v0, Lj00$a;->c:Ljava/lang/String;

    return-object v0
.end method
