.class public abstract Lm00;
.super Li00;
.source "SourceFile"

# interfaces
.implements Lny$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Li00<",
        "TT;>;",
        "Lny$f;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILj00;Lqy$a;Lqy$b;)V
    .locals 9

    .line 1
    invoke-static {p1}, Ln00;->a(Landroid/content/Context;)Ln00;

    move-result-object v3

    .line 2
    sget-object v0, Lfy;->c:Ljava/lang/Object;

    sget-object v4, Lfy;->d:Lfy;

    const-string v0, "null reference"

    .line 3
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v6, Lb10;

    invoke-direct {v6, p5}, Lb10;-><init>(Lqy$a;)V

    .line 6
    new-instance v7, Lc10;

    invoke-direct {v7, p6}, Lc10;-><init>(Lqy$b;)V

    .line 7
    iget-object v8, p4, Lj00;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 8
    invoke-direct/range {v0 .. v8}, Li00;-><init>(Landroid/content/Context;Landroid/os/Looper;Ln00;Lgy;ILi00$a;Li00$b;Ljava/lang/String;)V

    .line 9
    iget-object p1, p4, Lj00;->a:Landroid/accounts/Account;

    .line 10
    iput-object p1, p0, Lm00;->E:Landroid/accounts/Account;

    .line 11
    iget-object p1, p4, Lj00;->c:Ljava/util/Set;

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 13
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    iput-object p1, p0, Lm00;->D:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm00;->D:Ljava/util/Set;

    return-object v0
.end method

.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lm00;->E:Landroid/accounts/Account;

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    .line 1
    invoke-super {p0}, Li00;->getMinApkVersion()I

    move-result v0

    return v0
.end method
