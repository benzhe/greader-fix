.class public final Loi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lk61<",
        "Lj41;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lsy0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ln91$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lyd1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lgi1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lkc1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lsy0;",
            ">;",
            "Lmb3<",
            "Ln91$a;",
            ">;",
            "Lmb3<",
            "Lyd1;",
            ">;",
            "Lmb3<",
            "Lgi1;",
            ">;",
            "Lmb3<",
            "Lkc1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loi1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Loi1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Loi1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Loi1;->d:Lmb3;

    .line 6
    iput-object p5, p0, Loi1;->e:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Loi1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy0;

    iget-object v1, p0, Loi1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln91$a;

    iget-object v2, p0, Loi1;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyd1;

    iget-object v3, p0, Loi1;->d:Lmb3;

    invoke-interface {v3}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgi1;

    iget-object v4, p0, Loi1;->e:Lmb3;

    invoke-interface {v4}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkc1;

    .line 2
    invoke-virtual {v0}, Lsy0;->l()Lc01;

    move-result-object v0

    .line 3
    invoke-virtual {v1}, Ln91$a;->a()Ln91;

    move-result-object v1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object v1, v0, Lc01;->b:Ln91;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object v2, v0, Lc01;->a:Lyd1;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object v3, v0, Lc01;->f:Lgi1;

    .line 10
    new-instance v1, Lx42;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lx42;-><init>(Lt50;)V

    .line 11
    iput-object v1, v0, Lc01;->c:Lx42;

    .line 12
    new-instance v1, Lc61;

    invoke-direct {v1, v4}, Lc61;-><init>(Lkc1;)V

    .line 13
    iput-object v1, v0, Lc01;->d:Lc61;

    .line 14
    new-instance v1, Li41;

    invoke-direct {v1, v2}, Li41;-><init>(Landroid/view/ViewGroup;)V

    .line 15
    iput-object v1, v0, Lc01;->e:Li41;

    .line 16
    invoke-virtual {v0}, Lc01;->e()Lg51;

    move-result-object v0

    .line 17
    check-cast v0, Lf01;

    .line 18
    iget-object v0, v0, Lf01;->y1:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk61;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
