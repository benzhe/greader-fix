.class public final Ly86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lr56;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lpe5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lzq;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lbf5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lz96;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lz86;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lv26;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj7<",
            "Lpe5;",
            ">;",
            "Ljj7<",
            "Lzq;",
            ">;",
            "Ljj7<",
            "Lbf5;",
            ">;",
            "Ljj7<",
            "Lz96;",
            ">;",
            "Ljj7<",
            "Lz86;",
            ">;",
            "Ljj7<",
            "Lv26;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly86;->a:Ljj7;

    .line 3
    iput-object p2, p0, Ly86;->b:Ljj7;

    .line 4
    iput-object p3, p0, Ly86;->c:Ljj7;

    .line 5
    iput-object p4, p0, Ly86;->d:Ljj7;

    .line 6
    iput-object p5, p0, Ly86;->e:Ljj7;

    .line 7
    iput-object p6, p0, Ly86;->f:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ly86;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lpe5;

    iget-object v0, p0, Ly86;->b:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzq;

    iget-object v1, p0, Ly86;->c:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lbf5;

    iget-object v1, p0, Ly86;->d:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lz96;

    iget-object v1, p0, Ly86;->e:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lz86;

    iget-object v1, p0, Ly86;->f:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lv26;

    .line 2
    const-class v1, [B

    sget-object v2, Lw86;->a:Lw86;

    const-string v8, "FIREBASE_INAPPMESSAGING"

    .line 3
    invoke-interface {v0, v8, v1, v2}, Lzq;->a(Ljava/lang/String;Ljava/lang/Class;Lxq;)Lyq;

    move-result-object v0

    .line 4
    new-instance v8, Lr56;

    .line 5
    new-instance v2, Lx86;

    invoke-direct {v2, v0}, Lx86;-><init>(Lyq;)V

    move-object v1, v8

    .line 6
    invoke-direct/range {v1 .. v7}, Lr56;-><init>(Lr56$a;Lbf5;Lpe5;Lz96;Lz86;Lv26;)V

    return-object v8
.end method
