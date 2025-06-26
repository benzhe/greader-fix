.class public Ly36;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lng6;


# instance fields
.field public final a:Lv56;

.field public b:Lrb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrb7<",
            "Lng6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lng6;->E()Lng6;

    move-result-object v0

    sput-object v0, Ly36;->c:Lng6;

    return-void
.end method

.method public constructor <init>(Lv56;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lbg7;->e:Lbg7;

    iput-object v0, p0, Ly36;->b:Lrb7;

    .line 3
    iput-object p1, p0, Ly36;->a:Lv56;

    return-void
.end method


# virtual methods
.method public a()Lrb7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrb7<",
            "Lng6;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly36;->b:Lrb7;

    iget-object v1, p0, Ly36;->a:Lv56;

    .line 2
    invoke-static {}, Lng6;->H()Lik6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv56;->a(Lik6;)Lrb7;

    move-result-object v1

    .line 3
    new-instance v2, Lq36;

    invoke-direct {v2, p0}, Lq36;-><init>(Ly36;)V

    .line 4
    invoke-virtual {v1, v2}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object v0

    .line 6
    new-instance v1, Lr36;

    invoke-direct {v1, p0}, Lr36;-><init>(Ly36;)V

    .line 7
    invoke-virtual {v0, v1}, Lrb7;->d(Ltc7;)Lrb7;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lng6;)V
    .locals 1

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Ly36;->b:Lrb7;

    return-void
.end method
