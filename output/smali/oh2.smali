.class public final Loh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lli2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Ll91<",
        "TAdT;>;AdT:",
        "Lf61;",
        ">",
        "Ljava/lang/Object;",
        "Lli2<",
        "TR;",
        "Lcn2<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field public a:Ll91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lpi2;Lni2;)Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi2;",
            "Lni2<",
            "TR;>;)",
            "Law2<",
            "Lcn2<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lpi2;->b:Loi2;

    .line 2
    invoke-interface {p2, v0}, Lni2;->a(Loi2;)Lk91;

    move-result-object p2

    .line 3
    new-instance v0, Lsi2;

    invoke-direct {v0}, Lsi2;-><init>()V

    invoke-interface {p2, v0}, Lk91;->d(Lsi2;)Lk91;

    .line 4
    invoke-interface {p2}, Lk91;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll91;

    iput-object p2, p0, Loh2;->a:Ll91;

    .line 5
    invoke-interface {p2}, Ll91;->d()Lh71;

    move-result-object p2

    .line 6
    new-instance v0, Lcn2;

    invoke-direct {v0}, Lcn2;-><init>()V

    .line 7
    iget-object p1, p1, Lpi2;->a:Lcom/google/android/gms/internal/ads/zzauj;

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh71;->a(Law2;)Law2;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p2, Lh71;->i:Lg91;

    invoke-virtual {p1}, Lg91;->b()Law2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh71;->a(Law2;)Law2;

    move-result-object p1

    .line 11
    :goto_0
    invoke-static {p1}, Lnv2;->A(Law2;)Lnv2;

    move-result-object p1

    new-instance v1, Lnh2;

    invoke-direct {v1, p0, v0, p2}, Lnh2;-><init>(Loh2;Lcn2;Lh71;)V

    sget-object p2, Llv2;->e:Llv2;

    .line 12
    invoke-virtual {p1, v1, p2}, Lnv2;->z(Lcv2;Ljava/util/concurrent/Executor;)Lnv2;

    move-result-object p1

    new-instance v1, Lqh2;

    invoke-direct {v1, v0}, Lqh2;-><init>(Lcn2;)V

    .line 13
    new-instance v0, Lxu2;

    invoke-direct {v0, p1, v1}, Lxu2;-><init>(Law2;Lvs2;)V

    .line 14
    invoke-static {p2, v0}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Loh2;->a:Ll91;

    return-object v0
.end method
