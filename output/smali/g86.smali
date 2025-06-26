.class public final Lg86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lsg6$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le86;

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ly27;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Li47;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le86;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le86;",
            "Ljj7<",
            "Ly27;",
            ">;",
            "Ljj7<",
            "Li47;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg86;->a:Le86;

    .line 3
    iput-object p2, p0, Lg86;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lg86;->c:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lg86;->a:Le86;

    iget-object v1, p0, Lg86;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly27;

    iget-object v2, p0, Lg86;->c:Ljj7;

    invoke-interface {v2}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li47;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lb37;

    .line 3
    new-instance v3, Lza7;

    invoke-direct {v3, v2}, Lza7;-><init>(Li47;)V

    const/4 v2, 0x0

    aput-object v3, v0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Ld37;->a(Ly27;Ljava/util/List;)Ly27;

    move-result-object v0

    .line 5
    sget-object v1, Lx27;->k:Lx27;

    .line 6
    sget-object v2, Lya7;->b:Lx27$a;

    sget-object v3, Lya7$b;->e:Lya7$b;

    .line 7
    invoke-virtual {v1, v2, v3}, Lx27;->e(Lx27$a;Ljava/lang/Object;)Lx27;

    move-result-object v1

    .line 8
    new-instance v2, Lsg6$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lsg6$a;-><init>(Ly27;Lx27;Lrg6;)V

    return-object v2
.end method
